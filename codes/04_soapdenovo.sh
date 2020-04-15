#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:00:00
#SBATCH -J SOAPdenovo
#SBATCH --mail-type=ALL
#SBATCH --mail-user jennifer.johansson.8786@student.uu.se

# Load modules
module load bioinfo-tools
module load soapdenovo

# Commands
SOAPdenovo-127mer all -p 2 -s /home/jennij/Genome_Analysis/analyses/02_genome_assembly/assembly.config -K 49 -R -o SOAPdenovo_output_K49 1>ass.log 2>ass.err