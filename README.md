# RNA-Seq Pipeline in Nextflow

This repository contains a high-level outline for an RNA-Seq pipeline implemented in Nextflow DSL2 syntax. The pipeline covers essential steps in RNA-Seq analysis, including:

1. Quality Control (QC) of raw FASTQ files using FASTQC.
2. Trimming of low-quality reads using Trimmomatic.
3. Alignment of reads to a reference genome using HISAT2.
4. Gene quantification with featureCounts.
5. Differential Expression analysis using DESeq2.
6. Conversion of the results to GCT file format for downstream analysis.

The pipeline is modular, and each step is encapsulated in a separate process for flexibility and ease of modification. It is designed for reproducibility and scalability.