// Define the workflow
workflow {
    // Define the steps in the pipeline
    fastqc_output = qc_raw_fastq(params.fastq, params.trimmed_dir)
    aligned_bam = read_alignment(fastqc_output, params.genome_index, params.aligned_bam_dir)
    counts = gene_quantification(aligned_bam, params.annotation, params.counts_dir)
    deseq2_results = differential_expression(counts, params.deseq2_results_dir)
    gct_file = gct_file_conversion(deseq2_results, params.gct_file_dir)
}
