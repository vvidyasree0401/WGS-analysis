#!/bin/bash
# Genome Assembly using Unicycler

# Create output directory if it doesn't exist
mkdir -p uni

# Set the number of CPU threads to use
THREADS=4

# Option 1: For single-end reads
unicycler -s sample.fastq.gz -o uni -t $THREADS

# Option 2: For paired-end reads
# unicycler -1 sample_R1_trimmed.fastq.gz -2 sample_R2_trimmed.fastq.gz -o uni -t $THREADS
