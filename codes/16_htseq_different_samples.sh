#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 02:00:00
#SBATCH -J htseq
#SBATCH --mail-type=ALL
#SBATCH --mail-user jennifer.johansson.8786@student.uu.se

# Load modules
module load bioinfo-tools
module load htseq

# Commands
htseq-count -f bam -r pos -s yes -i ID --samout=sel2_SRR1719013_htseq_output /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples/sel2_SRR1719013_tophat_out/accepted_hits.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz

#htseq-count -f bam -r pos -s yes -i ID --samout=sel2_SRR1719014_htseq_output /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples/sel2_SRR1719014_tophat_out/accepted_hits.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz

#htseq-count -f bam -r pos -s yes -i ID --samout=sel2_SRR1719015_htseq_output /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples/sel2_SRR1719015_tophat_out/accepted_hits.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz

#htseq-count -f bam -r pos -s yes -i ID --samout=sel2_SRR1719016_htseq_output /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples/sel2_SRR1719016_tophat_out/accepted_hits.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz

#tseq-count -f bam -r pos -s yes -i ID --samout=sel2_SRR1719017_htseq_output /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples/sel2_SRR1719017_tophat_out/accepted_hits.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz

#htseq-count -f bam -r pos -s yes -i ID --samout=sel2_SRR1719018_htseq_output /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples/sel2_SRR1719018_tophat_out/accepted_hits.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz

#htseq-count -f bam -r pos -s yes -i ID --samout=sel2_SRR1719204_htseq_output /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples/sel2_SRR1719204_tophat_out/accepted_hits.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz

#htseq-count -f bam -r pos -s yes -i ID --samout=sel2_SRR1719206_htseq_output /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples/sel2_SRR1719206_tophat_out/accepted_hits.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz

#htseq-count -f bam -r pos -s yes -i ID --samout=sel2_SRR1719207_htseq_output /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples/sel2_SRR1719207_tophat_out/accepted_hits.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz

#htseq-count -f bam -r pos -s yes -i ID --samout=sel2_SRR1719208_htseq_output /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples/sel2_SRR1719208_tophat_out/accepted_hits.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz

#htseq-count -f bam -r pos -s yes -i ID --samout=sel2_SRR1719209_htseq_output /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples/sel2_SRR1719209_tophat_out/accepted_hits.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz

#htseq-count -f bam -r pos -s yes -i ID --samout=sel2_SRR1719211_htseq_output /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples/sel2_SRR1719211_tophat_out/accepted_hits.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz

#htseq-count -f bam -r pos -s yes -i ID --samout=sel2_SRR1719212_htseq_output /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples/sel2_SRR1719212_tophat_out/accepted_hits.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz

#htseq-count -f bam -r pos -s yes -i ID --samout=sel2_SRR1719213_htseq_output /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples/sel2_SRR1719213_tophat_out/accepted_hits.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz

#htseq-count -f bam -r pos -s yes -i ID --samout=sel2_SRR1719214_htseq_output /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples/sel2_SRR1719214_tophat_out/accepted_hits.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz

#htseq-count -f bam -r pos -s yes -i ID --samout=sel2_SRR1719241_htseq_output /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples/sel2_SRR1719241_tophat_out/accepted_hits.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz

#htseq-count -f bam -r pos -s yes -i ID --samout=sel2_SRR1719242_htseq_output /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples/sel2_SRR1719242_tophat_out/accepted_hits.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz

#htseq-count -f bam -r pos -s yes -i ID --samout=sel2_SRR1719266_htseq_output /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples/sel2_SRR1719266_tophat_out/accepted_hits.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz
