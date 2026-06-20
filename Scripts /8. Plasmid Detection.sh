#!/bin/bash
# Plasmid Detection using PlasmidFinder

# Create output directory
mkdir -p plasmid_out

# Option 1: Using the ABRicate wrapper (Recommended for rapid multi-database pipelines)
abricate --db plasmidfinder annotation/sample.fna > plasmid_out/plasmid_results.txt

# Option 2: Using standalone PlasmidFinder (Activate if using native parameters)
# plasmidfinder.py -i annotation/sample.fna -o plasmid_out/ -p plasmidfinder_db -x

echo "Plasmid detection complete. Results saved to plasmid_out/"
