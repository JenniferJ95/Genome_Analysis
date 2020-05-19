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
samtools view -bf 1 accepted_hits.bam > paired_ends.bam
samtools view -bF 1 accepted_hits.bam > single_ends.bam

