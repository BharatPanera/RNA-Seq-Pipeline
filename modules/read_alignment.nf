process read_alignment {
    input:
    path fastq
    path genome_index
    output:
    path "${params.aligned_bam_dir}/${fastq.baseName}.bam"

    script:
    """
    # Run HISAT2 alignment
    hisat2 -x ${genome_index} -U ${fastq} | samtools view -bS - > ${params.aligned_bam_dir}/${fastq.baseName}.bam
    """
}