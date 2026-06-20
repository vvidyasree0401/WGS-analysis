#!/bin/bash
# Assembly Assessment using BUSCO

# Create output directory
mkdir -p busco_out

# Option 1: Running BUSCO on an assembly (FASTA genome file)
# Replace 'bacteria_odb10' with your specific lineage dataset if needed (e.g., enterobacterales_odb10)
busco -i uni/assembly.fasta -o busco_out -m genome -l bacteria_odb10 --cpu 8

# Option 2: Running BUSCO on predicted proteins (if available)
# busco -i prokka_out/proteins.faa -o busco_prot_out -m proteins -l bacteria_odb10 --cpu 8
