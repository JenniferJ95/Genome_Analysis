#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J trinity
#SBATCH --mail-type=ALL
#SBATCH --mail-user jennifer.johansson.8786@student.uu.se

# Load modules
module load bioinfo-tools
module load trinity/2.4.0

# Commands
 Trinity --genome_guided_bam /home/jennij/Genome_Analysis/analyses/03_rna_assembly/tophat_before_trinity/tophat_out/accepted_hits.bam \
         --genome_guided_max_intron 10000 \
         --max_memory 12G --CPU 2 
