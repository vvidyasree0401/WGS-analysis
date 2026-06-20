# UPEC Whole Genome Sequencing (WGS) Analysis

A reproducible bioinformatics workflow for the whole-genome sequencing (WGS) analysis of **Uropathogenic *Escherichia coli* (UPEC)** using publicly available sequencing data. This project demonstrates the complete bacterial WGS analysis pipeline, from raw reads to genomic characterization.

## Workflow

```
FASTQ Reads
    │
    ▼
 FastQC
    │
    ▼
Read Trimming 
    │
    ▼
Genome Assembly 
    │
    ▼
Assembly Evaluation 
    │
    ▼
Genome Annotation 
    │
    ├── AMR Detection
    ├── Virulence Profiling
    ├── MLST
    ├── SNP Calling
    ├── Phylogenetic Analysis
    ├── Plasmid Detection
    └── Pan-genome Analysis 
    
```

## Tools

| Step | Software |
|------|----------|
| Quality Control | FastQC |
| Read Trimming | fastp |
| Genome Assembly | Unicycler |
| Assembly Assessment | QUAST |
| Genome Annotation | Prokka |
| AMR Detection | AMRFinderPlus |
| Virulence Profiling | ABRicate + VFDB |
| Plasmid Detection | PlasmidFinder |
| Sequence Typing | mlst |
| SNP Calling | Snippy |
| Phylogenetic Analysis | IQ-TREE |
| Pan-genome Analysis | Panaroo |


## Dataset

This workflow was developed using publicly available UPEC sequencing data. The dataset is not included in this repository due to its size but can be replaced with any paired-end bacterial WGS dataset.

## License

Released under the MIT License.
