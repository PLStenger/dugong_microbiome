#!/usr/bin/env bash

# trimmomatic version 0.39
# trimmomatic manual : http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/TrimmomaticManual_V0.32.pdf

WORKING_DIRECTORY=/scratch_vol1/fungi/dugong_microbiome/01_raw_data
OUTPUT=/scratch_vol1/fungi/dugong_microbiome/03_cleaned_data

# Make the directory (mkdir) only if not existe already(-p)
mkdir -p $OUTPUT

ADAPTERFILE=/scratch_vol1/fungi/dugong_microbiome/99_softwares/adapters_sequences.fasta

# Arguments :
# ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150

eval "$(conda shell.bash hook)"
conda activate trimmomatic

cd $WORKING_DIRECTORY

####################################################
# Cleaning step
####################################################

trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC02-43-a_R1.fastq.gz $WORKING_DIRECTORY/NC02-43-a_R2.fastq.gz $OUTPUT/NC02-43-a_R1.paired.fastq.gz $OUTPUT/NC02-43-a_R1.single.fastq.gz $OUTPUT/NC02-43-a_R2.paired.fastq.gz $OUTPUT/NC02-43-a_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC03-02-a_R1.fastq.gz $WORKING_DIRECTORY/NC03-02-a_R2.fastq.gz $OUTPUT/NC03-02-a_R1.paired.fastq.gz $OUTPUT/NC03-02-a_R1.single.fastq.gz $OUTPUT/NC03-02-a_R2.paired.fastq.gz $OUTPUT/NC03-02-a_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC03-03-b_R1.fastq.gz $WORKING_DIRECTORY/NC03-03-b_R2.fastq.gz $OUTPUT/NC03-03-b_R1.paired.fastq.gz $OUTPUT/NC03-03-b_R1.single.fastq.gz $OUTPUT/NC03-03-b_R2.paired.fastq.gz $OUTPUT/NC03-03-b_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC12-160-a_R1.fastq.gz $WORKING_DIRECTORY/NC12-160-a_R2.fastq.gz $OUTPUT/NC12-160-a_R1.paired.fastq.gz $OUTPUT/NC12-160-a_R1.single.fastq.gz $OUTPUT/NC12-160-a_R2.paired.fastq.gz $OUTPUT/NC12-160-a_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC13-128-a_R1.fastq.gz $WORKING_DIRECTORY/NC13-128-a_R2.fastq.gz $OUTPUT/NC13-128-a_R1.paired.fastq.gz $OUTPUT/NC13-128-a_R1.single.fastq.gz $OUTPUT/NC13-128-a_R2.paired.fastq.gz $OUTPUT/NC13-128-a_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC13-129Dd-a_R1.fastq.gz $WORKING_DIRECTORY/NC13-129Dd-a_R2.fastq.gz $OUTPUT/NC13-129Dd-a_R1.paired.fastq.gz $OUTPUT/NC13-129Dd-a_R1.single.fastq.gz $OUTPUT/NC13-129Dd-a_R2.paired.fastq.gz $OUTPUT/NC13-129Dd-a_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC13-130-a_R1.fastq.gz $WORKING_DIRECTORY/NC13-130-a_R2.fastq.gz $OUTPUT/NC13-130-a_R1.paired.fastq.gz $OUTPUT/NC13-130-a_R1.single.fastq.gz $OUTPUT/NC13-130-a_R2.paired.fastq.gz $OUTPUT/NC13-130-a_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC13-131-i_R1.fastq.gz $WORKING_DIRECTORY/NC13-131-i_R2.fastq.gz $OUTPUT/NC13-131-i_R1.paired.fastq.gz $OUTPUT/NC13-131-i_R1.single.fastq.gz $OUTPUT/NC13-131-i_R2.paired.fastq.gz $OUTPUT/NC13-131-i_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC13-132-b_R1.fastq.gz $WORKING_DIRECTORY/NC13-132-b_R2.fastq.gz $OUTPUT/NC13-132-b_R1.paired.fastq.gz $OUTPUT/NC13-132-b_R1.single.fastq.gz $OUTPUT/NC13-132-b_R2.paired.fastq.gz $OUTPUT/NC13-132-b_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC13-134-c_R1.fastq.gz $WORKING_DIRECTORY/NC13-134-c_R2.fastq.gz $OUTPUT/NC13-134-c_R1.paired.fastq.gz $OUTPUT/NC13-134-c_R1.single.fastq.gz $OUTPUT/NC13-134-c_R2.paired.fastq.gz $OUTPUT/NC13-134-c_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC13-135-d_R1.fastq.gz $WORKING_DIRECTORY/NC13-135-d_R2.fastq.gz $OUTPUT/NC13-135-d_R1.paired.fastq.gz $OUTPUT/NC13-135-d_R1.single.fastq.gz $OUTPUT/NC13-135-d_R2.paired.fastq.gz $OUTPUT/NC13-135-d_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC13-136-e_R1.fastq.gz $WORKING_DIRECTORY/NC13-136-e_R2.fastq.gz $OUTPUT/NC13-136-e_R1.paired.fastq.gz $OUTPUT/NC13-136-e_R1.single.fastq.gz $OUTPUT/NC13-136-e_R2.paired.fastq.gz $OUTPUT/NC13-136-e_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC13-137-f_R1.fastq.gz $WORKING_DIRECTORY/NC13-137-f_R2.fastq.gz $OUTPUT/NC13-137-f_R1.paired.fastq.gz $OUTPUT/NC13-137-f_R1.single.fastq.gz $OUTPUT/NC13-137-f_R2.paired.fastq.gz $OUTPUT/NC13-137-f_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC13-138-b_R1.fastq.gz $WORKING_DIRECTORY/NC13-138-b_R2.fastq.gz $OUTPUT/NC13-138-b_R1.paired.fastq.gz $OUTPUT/NC13-138-b_R1.single.fastq.gz $OUTPUT/NC13-138-b_R2.paired.fastq.gz $OUTPUT/NC13-138-b_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC13-139-c_R1.fastq.gz $WORKING_DIRECTORY/NC13-139-c_R2.fastq.gz $OUTPUT/NC13-139-c_R1.paired.fastq.gz $OUTPUT/NC13-139-c_R1.single.fastq.gz $OUTPUT/NC13-139-c_R2.paired.fastq.gz $OUTPUT/NC13-139-c_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC13-140-g_R1.fastq.gz $WORKING_DIRECTORY/NC13-140-g_R2.fastq.gz $OUTPUT/NC13-140-g_R1.paired.fastq.gz $OUTPUT/NC13-140-g_R1.single.fastq.gz $OUTPUT/NC13-140-g_R2.paired.fastq.gz $OUTPUT/NC13-140-g_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC13-141-d_R1.fastq.gz $WORKING_DIRECTORY/NC13-141-d_R2.fastq.gz $OUTPUT/NC13-141-d_R1.paired.fastq.gz $OUTPUT/NC13-141-d_R1.single.fastq.gz $OUTPUT/NC13-141-d_R2.paired.fastq.gz $OUTPUT/NC13-141-d_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC13-142-e_R1.fastq.gz $WORKING_DIRECTORY/NC13-142-e_R2.fastq.gz $OUTPUT/NC13-142-e_R1.paired.fastq.gz $OUTPUT/NC13-142-e_R1.single.fastq.gz $OUTPUT/NC13-142-e_R2.paired.fastq.gz $OUTPUT/NC13-142-e_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC13-143-f_R1.fastq.gz $WORKING_DIRECTORY/NC13-143-f_R2.fastq.gz $OUTPUT/NC13-143-f_R1.paired.fastq.gz $OUTPUT/NC13-143-f_R1.single.fastq.gz $OUTPUT/NC13-143-f_R2.paired.fastq.gz $OUTPUT/NC13-143-f_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC13-144-h_R1.fastq.gz $WORKING_DIRECTORY/NC13-144-h_R2.fastq.gz $OUTPUT/NC13-144-h_R1.paired.fastq.gz $OUTPUT/NC13-144-h_R1.single.fastq.gz $OUTPUT/NC13-144-h_R2.paired.fastq.gz $OUTPUT/NC13-144-h_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC19-200-a_R1.fastq.gz $WORKING_DIRECTORY/NC19-200-a_R2.fastq.gz $OUTPUT/NC19-200-a_R1.paired.fastq.gz $OUTPUT/NC19-200-a_R1.single.fastq.gz $OUTPUT/NC19-200-a_R2.paired.fastq.gz $OUTPUT/NC19-200-a_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC19-201-b_R1.fastq.gz $WORKING_DIRECTORY/NC19-201-b_R2.fastq.gz $OUTPUT/NC19-201-b_R1.paired.fastq.gz $OUTPUT/NC19-201-b_R1.single.fastq.gz $OUTPUT/NC19-201-b_R2.paired.fastq.gz $OUTPUT/NC19-201-b_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC19-202-c_R1.fastq.gz $WORKING_DIRECTORY/NC19-202-c_R2.fastq.gz $OUTPUT/NC19-202-c_R1.paired.fastq.gz $OUTPUT/NC19-202-c_R1.single.fastq.gz $OUTPUT/NC19-202-c_R2.paired.fastq.gz $OUTPUT/NC19-202-c_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC19-203-d_R1.fastq.gz $WORKING_DIRECTORY/NC19-203-d_R2.fastq.gz $OUTPUT/NC19-203-d_R1.paired.fastq.gz $OUTPUT/NC19-203-d_R1.single.fastq.gz $OUTPUT/NC19-203-d_R2.paired.fastq.gz $OUTPUT/NC19-203-d_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/NC19-204-e_R1.fastq.gz $WORKING_DIRECTORY/NC19-204-e_R2.fastq.gz $OUTPUT/NC19-204-e_R1.paired.fastq.gz $OUTPUT/NC19-204-e_R1.single.fastq.gz $OUTPUT/NC19-204-e_R2.paired.fastq.gz $OUTPUT/NC19-204-e_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
