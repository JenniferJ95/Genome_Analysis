#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 01:00:00
#SBATCH -J nucmer
#SBATCH --mail-type=ALL
#SBATCH --mail-user jennifer.johansson.8786@student.uu.se

# Load modules
module load bioinfo-tools
module load MUMmer

# Commands
nucmer /home/jennij/Genome_Analysis/analyses/02_genome_assembly/nucmer/sel2_NW_015504334.fna /home/jennij/Genome_Analysis/analyses/03_rna_assembly/trinity/trinity_out_dir/Trinity-GG.fasta
