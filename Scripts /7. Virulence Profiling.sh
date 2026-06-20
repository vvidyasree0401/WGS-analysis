#!/bin/bash
# Virulence Profiling using ABRicate with the VFDB Database

# Create output directory
mkdir -p virulence_out

# Run ABRicate screening against the Virulence Factor Database (VFDB)
abricate --db vfdb annotation/sample.fna > virulence_out/virulence_results.txt

echo "Virulence profiling complete. Results saved to virulence_out/virulence_results.txt"
