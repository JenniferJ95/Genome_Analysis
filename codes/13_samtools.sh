#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:10:00
#SBATCH -J samtools
#SBATCH --mail-type=ALL
#SBATCH --mail-user jennifer.johansson.8786@student.uu.se

# Load modules
module load bioinfo-tools
module load samtools

# Commands
samtools view /home/jennij/Genome_Analysis/analyses/03_rna_assembly/tophat_before_trinity/tophat_out/accepted_hits.bam > /home/jennij/Genome_Analysis/analyses/05_differential_expression/samtools/accepted_hits_bam_samtools_view

