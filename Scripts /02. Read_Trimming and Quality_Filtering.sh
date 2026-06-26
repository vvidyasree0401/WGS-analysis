#!/bin/bash
# Read Trimming and Quality Filtering using fastp

# Create output directory if it doesn't exist
mkdir -p trimmed

# Option 1: For single-end reads
fastp -i sample.fastq.gz -o trimmed/sample_trimmed.fastq.gz --html trimmed/report.html --json trimmed/report.json

# Option 2: For paired-end reads
fastp -i sample_R1.fastq.gz -I sample_R2.fastq.gz \
      -o trimmed/sample_R1_trimmed.fastq.gz -O trimmed/sample_R2_trimmed.fastq.gz \
      --html trimmed/report.html --json trimmed/report.json
