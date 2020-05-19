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
htseq-count -f bam -r pos -s yes -i ID /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples_2/FL_CS15_tophat_out/paired_ends.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz > out_htseq_FL_CS15

htseq-count -f bam -r pos -s yes -i ID /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples_2/HL_CS15_tophat_out/paired_ends.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz > out_htseq_HL_CS15

htseq-count -f bam -r pos -s yes -i ID /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples_2/FL_CS16_tophat_out/paired_ends.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz > out_htseq_FL_CS16

htseq-count -f bam -r pos -s yes -i ID /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples_2/HL_CS16_tophat_out/paired_ends.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz > out_htseq_HL_CS16

htseq-count -f bam -r pos -s yes -i ID /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples_2/FL_CS17_tophat_out/paired_ends.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz > out_htseq_FL_CS17

htseq-count -f bam -r pos -s yes -i ID /home/jennij/Genome_Analysis/analyses/05_differential_expression/tophat_different_samples_2/HL_CS17_tophat_out/paired_ends.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz > out_htseq_HL_CS17

