#!/bin/bash -L

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J FastQC_1
#SBATCH --mail-type=ALL
#SBATCH --mail-user jennifer.johansson.8786@student.uu.se

# Load modules
module load bioinf-tools
module load FastQC

# Your commands
fastqc -o /home/jennij/Genome_Analysis/analyses/01_preprocessing/fastqc/fastqc_rna_raw -f fastq /home/jennij/Genome_Analysis/data/rna_data/raw_data/*.fastq.gz
fastqc -o /home/jennij/Genome_Analysis/analyses/01_preprocessing/fastqc/fastqc_rna_trimmed -f fastq /home/jennij/Genome_Analysis/data/rna_data/trimmed_data/*.fastq.gz
fastqc -o /home/jennij/Genome_Analysis/analyses/01_preprocessing/fastqc/fastqc_dna -f fastq /home/jennij/Genome_Analysis/data/dna_data/*.fastq.gz
