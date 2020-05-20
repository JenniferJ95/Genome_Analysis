# Install packages
install.packages("BiocManager")
install.packages("readxl")
BiocManager::install("DESeq2")
BiocManager::install("apeglm")
BiocManager::install("IHW")

# Load package
library("DESeq2")
library("readxl")

# Set working directory
#setwd('C:/Users/jenniferjohansson/Desktop/Genomanalys/Project/Genome_Analysis/analyses')

directory <- "/Users/jenniferjohansson/Desktop/Genomanalys/Project/Genome_Analysis/analyses/05_differential_expression/htseq_different_samples3"

sampleFiles <- grep("out_htseq_",list.files(directory),value=TRUE)

sampleTime <- sub("[a-z]{3}_[a-z]{5}_[A-Z]{2}_","\\1",sampleFiles)

sampleCondition <- sub("[a-z]{3}_[a-z]{5}_","\\1",sampleFiles)
sampleCondition <- sub("_CS[0-9]{2}$","\\1",sampleCondition)

sampleTable <- data.frame(sampleName = sampleFiles,
                          fileName = sampleFiles,
                          devStage = sampleTime,
                          tissue = sampleCondition)

sampleTable$tissue <- factor(sampleTable$tissue)

dds <- DESeqDataSetFromHTSeqCount(sampleTable = sampleTable,
                                       directory = directory,
                                       design= ~ tissue)

dds$tissue <- factor(dds$tissue, levels = c("FL", "HL"))

#dds_htseq <- DESeq(dds_htseq)
#result <- results(dds_htseq)

# Remove all zeros
keep <- rowSums(counts(dds)) > 0
dds <- dds[keep,]

dds$tissue <- factor(dds$tissue, levels = c("FL", "HL"))

dds <- DESeq(dds)
result <- results(dds)

#resultsNames returns the names of the estimated effects (coefficents) of the model
resultsNames(dds)

# Log fold change shrinkage for visualization and ranking
resLFC <- lfcShrink(dds, coef="tissue_FL_vs_HL", type = "apeglm")
resLFC

# Using parallelization
library("BiocParallel")
register(MulticoreParam(4))

# Order the results table by the smallest p value
resultOrdered <- result[order(result$pvalue),]

# Summaruze some basic tallies with summary function
summary(result)

# How many adjusted p-values were less than 0.1?
sum(result$padj < 0.1, na.rm=TRUE)

# By default the argument alpha is set to 0.1. If the adjusted p value cutoff will be a value other than 0.1, 
# alpha should be set to that value:
result05 <- results(dds, alpha=0.05)
summary(result05)

sum(result05$padj < 0.05, na.rm=TRUE)

# Independent hypothesis weighting
library("IHW")
resultIHW <- results(dds, filterFun=ihw)
summary(resultIHW)
sum(resultIHW$padj < 0.1, na.rm=TRUE)
metadata(resultIHW)$ihwResult

# MA-plot


