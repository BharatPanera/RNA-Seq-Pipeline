process gene_quantification {
    input:
    path bam
    path annotation
    output:
    path "${params.counts_dir}/${bam.baseName}_counts.txt"

    script:
    """
    # Run featureCounts to quantify reads per gene
    featureCounts -a ${annotation} -o ${params.counts_dir}/${bam.baseName}_counts.txt ${bam}
    """
}