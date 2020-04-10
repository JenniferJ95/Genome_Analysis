#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:30:00
#SBATCH -J MultiQC_1
#SBATCH --mail-type=ALL
#SBATCH --mail-user jennifer.johansson.8786@student.uu.se

# Load modules
module load bioinfo-tools
module load MultiQC

# Your commands

multiqc -o /home/jennij/Genome_Analysis/analyses/01_preprocessing/multiqc/multiqc_rna_raw /home/jennij/Genome_Analysis/analyses/01_preprocessing/fastqc/fastqc_rna_raw
multiqc -o /home/jennij/Genome_Analysis/analyses/01_preprocessing/multiqc/multiqc_rna_trimmed /home/jennij/Genome_Analysis/analyses/01_preprocessing/fastqc/fastqc_rna_trimmed
multiqc -o /home/jennij/Genome_Analysis/analyses/01_preprocessing/multiqc/multiqc_dna /home/jennij/Genome_Analysis/analyses/01_preprocessing/fastqc/fastqc_dna
