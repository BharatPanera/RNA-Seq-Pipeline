process gct_file_conversion {
    input:
    path deseq2_results
    output:
    path "${params.gct_file_dir}/final_results.gct"

    script:
    """
    # Convert DESeq2 results to GCT format using R
    Rscript ${params.scripts_dir}/gct_conversion.R ${deseq2_results} ${params.gct_file_dir}/final_results.gct
    """
}