#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:15:00
#SBATCH -J htseq
#SBATCH --mail-type=ALL
#SBATCH --mail-user jennifer.johansson.8786@student.uu.se

# Load modules
module load bioinfo-tools
module load htseq

# Commands
htseq-count -f bam -r pos -s yes -i ID --samout=htseq_output /home/jennij/Genome_Analysis/analyses/03_rna_assembly/tophat_before_trinity/tophat_out/accepted_hits.bam /home/jennij/Genome_Analysis/data/additional_data/GCF_001595765.1_Mnat.v1_genomic.gff.gz
