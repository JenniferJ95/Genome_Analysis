#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 02:30:00
#SBATCH -J mummerplot
#SBATCH --mail-type=ALL
#SBATCH --mail-user jennifer.johansson.8786@student.uu.se

# Load modules
module load bioinfo-tools
module load MUMmer

# Commands
mummerplot --png --layout --filter /home/jennij/Genome_Analysis/analyses/02_genome_assembly/nucmer/run_2/out.delta
