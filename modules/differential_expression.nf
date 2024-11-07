process differential_expression {
    input:
    path counts
    output:
    path "${params.deseq2_results_dir}/deseq2_results.txt"

    script:
    """
    # Run DESeq2 analysis in R
    Rscript ${params.scripts_dir}/deseq2_script.R ${counts} ${params.deseq2_results_dir}/deseq2_results.txt
    """
}