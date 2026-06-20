#!/bin/bash
# Quality Assessment of Raw Data

# Create output directory if it doesn't exist
mkdir -p fastqc

# Option 1: For single-end reads
fastqc sample.fastq.gz -o fastqc

# Option 2: For paired-end reads
fastqc sample_R1.fastq.gz sample_R2.fastq.gz -o fastqc
