# Install packages
install.packages("BiocManager")
install.packages("readxl")
BiocManager::install("DESeq2")
BiocManager::install("apeglm")
BiocManager::install("IHW")
install.packages('ape')

# Load packages
library("DESeq2")
library("readxl")
library('ape')
library("BiocParallel")
library("IHW")


##### Extract gene id and gene names #####

data <- read.gff('/Users/jenniferjohansson/Desktop/Genomanalys/GCF_001595765.1_Mnat.v1_genomic.gff')

# Extract all attributes in the data
attributes <- data.frame(data$attributes)
reg_pattern = "ID=id[0-9]+"
attributes1 <- grep(reg_pattern, attributes$data.attributes)
subset <- data.frame(attributes$data.attributes[attributes1])

# Extract gene id's
reg_pattern_2 = "GeneID:[0-9]+"
attributes2 <- grep(reg_pattern_2, subset$attributes.data.attributes.attributes1.)
subset_2 <- data.frame(subset$attributes.data.attributes.attributes1.[attributes2])
attributes_id <- regexpr(reg_pattern, subset_2$subset.attributes.data.attributes.attributes1..attributes2.)
id <- regmatches(subset_2$subset.attributes.data.attributes.attributes1..attributes2., attributes_id)
id <- sub("ID=","\\1", id)

# Extract gene names
reg_pattern_3 = "gene=[A-Z 0-9]*"
attributes_gene <- regexpr(reg_pattern_3, subset_2$subset.attributes.data.attributes.attributes1..attributes2.)
gene <- regmatches(subset_2$subset.attributes.data.attributes.attributes1..attributes2., attributes_gene)
gene <- sub("gene=","\\1", gene)

# Table with gene id and gene name
data_id_gname <- data.frame(id, gene)


##### DESeq with HTSeq-count input #####

# Set directory that has the HTSeq-output
directory <- "/Users/jenniferjohansson/Desktop/Genomanalys/Project/Genome_Analysis/analyses/05_differential_expression/htseq_different_samples2/output_deseq"

# Load metadata for the files to set the development stages and tissue/condition for all samples
metadata <- read_xlsx("/Users/jenniferjohansson/Desktop/Genomanalys/Metadata.xlsx")
sampleNames <- grep("out_",list.files(directory),value=TRUE)
sampleNames <- sub("out_htseq_","\\1", sampleNames)
sampleFiles <- grep("out_",list.files(directory),value=TRUE)
sampleTime <- metadata$dev_stage
sampleCondition <- metadata$tissue

# Create sampleTable
sampleTable <- data.frame(sampleName = sampleNames,
                          fileName = sampleFiles,
                          devStage = sampleTime,
                          tissue = sampleCondition)

sampleTable$tissue <- factor(sampleTable$tissue)

# Create the DESeqDataSet (dds)
dds <- DESeqDataSetFromHTSeqCount(sampleTable = sampleTable,
                                  directory = directory,
                                  design= ~ tissue)

# Factor and set the reference level for this
dds$tissue <- factor(dds$tissue, levels = c("Embryonic Forelimbs", "Embryonic Hindlimbs"))

# Remove all rows that has zeros
keep <- rowSums(counts(dds)) > 0
dds <- dds[keep,]

dds$tissue <- factor(dds$tissue, levels = c("Embryonic Forelimbs", "Embryonic Hindlimbs"))

# Make the differential expression analysis 
dds <- DESeq(dds)

##### Analyze the results #####

# Fetch the results
result <- results(dds)
result

#resultsNames returns the names of the estimated effects (coefficents) of the model
resultsNames(dds)

# Log fold change shrinkage for visualization and ranking
resLFC <- lfcShrink(dds, coef="tissue_Embryonic.Hindlimbs_vs_Embryonic.Forelimbs", type = "apeglm")
resLFC

# Using parallelization
register(MulticoreParam(4))

# Order the results table by the smallest p value
resultOrdered <- result[order(result$pvalue),]

# Summarize some basic tallies with summary function
summary(result)

# Calculate how many adjusted p-values were less than 0.1
sum(result$padj < 0.1, na.rm=TRUE)

# Get the result for the cutoff at 0.05 instead
result05 <- results(dds, alpha=0.05)
summary(result05)
sum(result05$padj < 0.05, na.rm=TRUE)

# Independent hypothesis weighting
resultIHW <- results(dds, filterFun=ihw)
summary(resultIHW)
sum(resultIHW$padj < 0.1, na.rm=TRUE)
metadata(resultIHW)$ihwResult

##### Get the gene id's and gene names for the best genes #####

# Get id's for the ones with pvalue < 0.05
idx <- which(result05$padj < 0.05)
gene_id <- rownames(result)[idx]

column <- match(gene_id, data_id_gname$id)
gene_name <- data.frame(data_id_gname$id[column], data_id_gname$gene[column])

# Look at the LFC values too
result$log2FoldChange
gene_name <- data.frame(data_id_gname$id[column], data_id_gname$gene[column], result05$log2FoldChange[idx])

# Rename columns for gene_name
names(gene_name)[1] <- "gene_id"
names(gene_name)[2] <- "gene_name"
names(gene_name)[3] <- "log_2_fold_change"

##### Plot results #####

# plotCounts examines the counts of reads for a single gene across the groups.
# plotCounts normalizes counts by sequencing depth and adds a pseudocount of 1/2 to allow for log scale plotting.

# Plot for gene id we have for our 20
for (i in 1:20) {
  plotCounts(dds, gene=gene_id[i], intgroup="tissue")
}


##### Save results #####

write.csv(as.data.frame(resultOrdered), file = "/Users/jenniferjohansson/Desktop/Genomanalys/Project/Genome_Analysis/analyses/05_differential_expression/deseq/deseq_results.csv")
write.csv(as.data.frame(result05), file = "/Users/jenniferjohansson/Desktop/Genomanalys/Project/Genome_Analysis/analyses/05_differential_expression/deseq/deseq_results_pval0.05.csv")
write.csv(as.data.frame(gene_name), file = "/Users/jenniferjohansson/Desktop/Genomanalys/Project/Genome_Analysis/analyses/05_differential_expression/deseq/deseq_results_top20.csv")

