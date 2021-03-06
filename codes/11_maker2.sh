#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 02:00:00
#SBATCH -J maker2
#SBATCH --mail-type=ALL
#SBATCH --mail-user jennifer.johansson.8786@student.uu.se

# Load modules
module load bioinfo-tools
module load maker/3.01.1-beta

# Commands, commented/uncommented depending on what I run

# ********** Step 1 **********
#maker

# ********** Step 2 **********
#gff3_merge -d clear_SOAPdenovo_output_K49_master_datastore_index.log

#maker2zff clear_SOAPdenovo_output_K49.all.gff

#fathom genome.ann genome.dna -validate > snap_validate_output.txt

#fathom genome.ann genome.dna -categorize 1000
#fathom uni.ann uni.dna -export 1000 -plus 

#forge ../export.ann ../export.dna

#hmm-assembler.pl my_genome parameters > my_genome.hmm

# ********** Step 3 **********
#maker

# ********** Step 4 (repeat step 2) **********
#gff3_merge -d clear_SOAPdenovo_output_K49_master_datastore_index.log

#maker2zff -n clear_SOAPdenovo_output_K49.all.gff

#fathom genome.ann genome.dna -validate > snap_validate_output.txt

#fathom genome.ann genome.dna -categorize 1000
#fathom uni.ann uni.dna -export 1000 -plus

#forge ../export.ann ../export.dna

#hmm-assembler.pl my_genome parameters_2 > my_genome.hmm

# ********** Step 5 (repeat step 3) **********
maker

# ********** Step 6 **********
#gff3_merge -d clear_SOAPdenovo_output_K49_master_datastore_index.log

maker2zff -n clear_SOAPdenovo_output_K49.all.gff

#fathom genome.ann genome.dna -validate > snap_validate_output.txt

#fathom genome.ann genome.dna -categorize 1000
#fathom uni.ann uni.dna -export 1000 -plus 
