// main workflow
workflow {
    fastqc_output = qc_raw_fastq(params.fastq, params.fastqc_reports)
    trimmed_reads = trim_reads(fastqc_output)
    aligned_bam = read_alignment(trimmed_reads, params.genome_index, params.aligned_bam_dir)
    counts = gene_quantification(aligned_bam, params.annotation, params.counts_dir)
    deseq2_results = differential_expression(counts, params.deseq2_results_dir)
    gct_file = gct_file_conversion(deseq2_results, params.gct_file_dir)
}