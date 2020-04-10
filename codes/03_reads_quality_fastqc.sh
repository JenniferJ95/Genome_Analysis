#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J FastQC_2
#SBATCH --mail-type=ALL
#SBATCH --mail-user jennifer.johansson.8786@student.uu.se

# Load modules
module load bioinfo-tools
module load FastQC

# Commands
fastqc -o /home/jennij/Genome_Analysis/analyses/01_preprocessing/fastqc/fastqc_rna_trimmed_trimmomatic -f fastq /home/jennij/Genome_Analysis/analyses/01_preprocessing/trimmomatic/*.fastq.gz

