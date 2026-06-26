#!/bin/bash
# Multi-Locus Sequence Typing (MLST) using mlst

# Create output directory
mkdir -p mlst_out

# Run mlst scan on the assembled nucleotide FASTA file
# The tool automatically determines the correct PubMLST schema for your organism
mlst annotation/sample.fna > mlst_out/mlst_results.txt

echo "MLST scanning complete. Results saved to mlst_out/mlst_results.txt"
