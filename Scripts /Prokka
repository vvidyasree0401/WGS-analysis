#!/bin/bash
# Genome Annotation using Prokka

# Create output directory
mkdir -p prokka_out

# Run Prokka on your assembly file
# Adjust --genus and --species parameters based on your specific organism
prokka uni/assembly.fasta --outdir prokka_out --prefix bacterial_sample --genus Bacillus --species subtilis --cpus 4
