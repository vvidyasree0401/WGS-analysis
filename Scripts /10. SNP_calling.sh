#!/bin/bash
# SNP Calling and Core Genome Alignment Pipeline using Snippy

# Create output directories
mkdir -p snippy_out

# =====================================================================
# Step 1: Run Snippy Variant Calling for each individual sample
# =====================================================================
echo "Running individual sample variant calling..."

# Sample 1
snippy --cpus 4 \
       --reference reference/ref_genome.gbk \
       --outdir snippy_out/sample1_variants \
       --pe1 trimmed_reads/sample1_R1.fastq.gz \
       --pe2 trimmed_reads/sample1_R2.fastq.gz

# Sample 2
snippy --cpus 4 \
       --reference reference/ref_genome.gbk \
       --outdir snippy_out/sample2_variants \
       --pe1 trimmed_reads/sample2_R1.fastq.gz \
       --pe2 trimmed_reads/sample2_R2.fastq.gz


# =====================================================================
# Step 2: Generate Core Genome Alignment (for Phylogenetics)
# =====================================================================
echo "Combining sample outputs into a core genome alignment..."

snippy-core --outdir snippy_out/core_alignment \
            snippy_out/sample1_variants \
            snippy_out/sample2_variants

echo "Pipeline complete! Core alignment saved as: snippy_out/core_alignment/core.aln"
