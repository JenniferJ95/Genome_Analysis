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
nucmer /home/jennij/Genome_Analysis/analyses/02_genome_assembly/nucmer/sel2_NW_015504334.fna *file to run nucmer on*

*file last time nucmer* /home/jennij/Genome_Analysis/analyses/02_genome_assembly/soapdenovo/SOAPdenovo_output_K49.contig


