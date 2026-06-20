# Bacterial WGS & AMR Analysis Pipeline

A reproducible bioinformatics workflow for analyzing antimicrobial resistant (AMR) bacteria using public whole-genome sequencing (WGS) data. This repository provides a simple, end-to-end pipeline that takes raw sequencing reads through quality control, genome assembly, and structural annotation, followed by deep genomic characterization including AMR profiling, virulence detection, plasmid mapping, plasmid/sequence typing, and core-genome phylogenetics.

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

## Tools & Software Stack

| Step | Software / Tool | Purpose |
| :--- | :--- | :--- |
| **Quality Control** | [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/) | Raw read quality assessment |
| **Read Trimming** | [fastp](https://github.com/OpenGene/fastp) | Adapter trimming and quality filtering |
| **Genome Assembly** | [Unicycler](https://github.com/rrwick/Unicycler) | De novo assembly (hybrid or short-read) |
| **Assembly Assessment** | [BUSCO](https://busco.ezlab.org/) | Evaluating biological and evolutionary completeness |
| **Genome Annotation** | [Prokka](https://github.com/tseemann/prokka) | Rapid prokaryotic genome annotation |
| **AMR Detection** | [AMRFinderPlus](https://github.com/ncbi/amr) | Identifying antimicrobial resistance genes |
| **Virulence Profiling** | [ABRicate](https://github.com/tseemann/abricate) + VFDB | Screening contigs for virulence factors |
| **Plasmid Detection** | [PlasmidFinder](https://cge.food.dtu.dk/services/PlasmidFinder/) | Identification of plasmid replicons |
| **Sequence Typing** | [mlst](https://github.com/tseemann/mlst) | Scan contigs for multi-locus sequence typing |
| **SNP Calling** | [Snippy](https://github.com/tseemann/snippy) | Rapid haploid variant calling and core genome alignment |
| **Phylogenetics** | [IQ-TREE](http://www.iqtree.org/) | Efficient phylogenomic tree reconstruction |
| **Pan-genome Analysis** | [Panaroo](https://gtonkinhill.github.io/panaroo/) | Bacterial pangenome analysis pipeline |


## Dataset

This workflow was developed using publicly available bacterial Whole genome sequencing data. The dataset is not included in this repository due to its size but can be replaced with any paired-end bacterial WGS dataset.

## License

Released under the MIT License.
