#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 40:00:00
#SBATCH -J tophat
#SBATCH --mail-type=ALL
#SBATCH --mail-user jennifer.johansson.8786@student.uu.se

# Load modules
module load bioinfo-tools
module load tophat

# Commands
tophat -o sel2_SRR1719013_tophat_out /home/jennij/Genome_Analysis/analyses/03_rna_assembly/tophat_before_trinity/bowtie2/bowtie2_output_index /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719013.trim_1P.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719013.trim_1U.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719013.trim_2U.fastq.gz /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719013.trim_2P.fastq.gz

tophat -o sel2_SRR1719014_tophat_out /home/jennij/Genome_Analysis/analyses/03_rna_assembly/tophat_before_trinity/bowtie2/bowtie2_output_index /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719014.trim_1P.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719014.trim_1U.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719014.trim_2U.fastq.gz /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719014.trim_2P.fastq.gz

tophat -o sel2_SRR1719015_tophat_out /home/jennij/Genome_Analysis/analyses/03_rna_assembly/tophat_before_trinity/bowtie2/bowtie2_output_index /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719015.trim_1P.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719015.trim_1U.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719015.trim_2U.fastq.gz /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719015.trim_2P.fastq.gz

tophat -o sel2_SRR1719016_tophat_out /home/jennij/Genome_Analysis/analyses/03_rna_assembly/tophat_before_trinity/bowtie2/bowtie2_output_index /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719016.trim_1P.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719016.trim_1U.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719016.trim_2U.fastq.gz /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719016.trim_2P.fastq.gz

tophat -o sel2_SRR1719017_tophat_out /home/jennij/Genome_Analysis/analyses/03_rna_assembly/tophat_before_trinity/bowtie2/bowtie2_output_index /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719017.trim_1P.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719017.trim_1U.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719017.trim_2U.fastq.gz /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719017.trim_2P.fastq.gz

tophat -o sel2_SRR1719018_tophat_out /home/jennij/Genome_Analysis/analyses/03_rna_assembly/tophat_before_trinity/bowtie2/bowtie2_output_index /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719018.trim_1P.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719018.trim_1U.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719018.trim_2U.fastq.gz /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719018.trim_2P.fastq.gz

tophat -o sel2_SRR1719204_tophat_out /home/jennij/Genome_Analysis/analyses/03_rna_assembly/tophat_before_trinity/bowtie2/bowtie2_output_index /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719204.trim_1P.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719204.trim_1U.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719204.trim_2U.fastq.gz /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719204.trim_2P.fastq.gz

tophat -o sel2_SRR1719206_tophat_out /home/jennij/Genome_Analysis/analyses/03_rna_assembly/tophat_before_trinity/bowtie2/bowtie2_output_index /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719206.trim_1P.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719206.trim_1U.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719206.trim_2U.fastq.gz /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719206.trim_2P.fastq.gz

tophat -o sel2_SRR1719207_tophat_out /home/jennij/Genome_Analysis/analyses/03_rna_assembly/tophat_before_trinity/bowtie2/bowtie2_output_index /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719207.trim_1P.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719207.trim_1U.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719207.trim_2U.fastq.gz /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719207.trim_2P.fastq.gz

tophat -o sel2_SRR1719208_tophat_out /home/jennij/Genome_Analysis/analyses/03_rna_assembly/tophat_before_trinity/bowtie2/bowtie2_output_index /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719208.trim_1P.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719208.trim_1U.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719208.trim_2U.fastq.gz /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719208.trim_2P.fastq.gz

tophat -o sel2_SRR1719209_tophat_out /home/jennij/Genome_Analysis/analyses/03_rna_assembly/tophat_before_trinity/bowtie2/bowtie2_output_index /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719209.trim_1P.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719209.trim_1U.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719209.trim_2U.fastq.gz /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719209.trim_2P.fastq.gz

tophat -o sel2_SRR1719211_tophat_out /home/jennij/Genome_Analysis/analyses/03_rna_assembly/tophat_before_trinity/bowtie2/bowtie2_output_index /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719211.trim_1P.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719211.trim_1U.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719211.trim_2U.fastq.gz /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719211.trim_2P.fastq.gz

tophat -o sel2_SRR1719212_tophat_out /home/jennij/Genome_Analysis/analyses/03_rna_assembly/tophat_before_trinity/bowtie2/bowtie2_output_index /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719212.trim_1P.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719212.trim_1U.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719212.trim_2U.fastq.gz /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719212.trim_2P.fastq.gz

tophat -o sel2_SRR1719213_tophat_out /home/jennij/Genome_Analysis/analyses/03_rna_assembly/tophat_before_trinity/bowtie2/bowtie2_output_index /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719213.trim_1P.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719213.trim_1U.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719213.trim_2U.fastq.gz /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719213.trim_2P.fastq.gz

tophat -o sel2_SRR1719214_tophat_out /home/jennij/Genome_Analysis/analyses/03_rna_assembly/tophat_before_trinity/bowtie2/bowtie2_output_index /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719214.trim_1P.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719214.trim_1U.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719214.trim_2U.fastq.gz /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719214.trim_2P.fastq.gz

tophat -o sel2_SRR1719241_tophat_out /home/jennij/Genome_Analysis/analyses/03_rna_assembly/tophat_before_trinity/bowtie2/bowtie2_output_index /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719241.trim_1P.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719241.trim_1U.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719241.trim_2U.fastq.gz /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719241.trim_2P.fastq.gz

tophat -o sel2_SRR1719242_tophat_out /home/jennij/Genome_Analysis/analyses/03_rna_assembly/tophat_before_trinity/bowtie2/bowtie2_output_index /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719242.trim_1P.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719242.trim_1U.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719242.trim_2U.fastq.gz /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719242.trim_2P.fastq.gz

tophat -o sel2_SRR1719266_tophat_out /home/jennij/Genome_Analysis/analyses/03_rna_assembly/tophat_before_trinity/bowtie2/bowtie2_output_index /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719266.trimmed_1P.fastq.gz,/home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719266.trimmed_1U.fastq.gz /home/jennij/Genome_Analysis/data/all_rna_trimmed/sel2_SRR1719266.trimmed_2P.fastq.gz
