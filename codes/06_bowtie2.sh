#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:30:00
#SBATCH -J bowtie2
#SBATCH --mail-type=ALL
#SBATCH --mail-user jennifer.johansson.8786@student.uu.se

# Load modules
module load bioinfo-tools
module load bowtie2

# Commands
bowtie2-build -f /home/jennij/Genome_Analysis/analyses/02_genome_assembly/nucmer/sel2_NW_015504334.fna bowtie2_output_index
