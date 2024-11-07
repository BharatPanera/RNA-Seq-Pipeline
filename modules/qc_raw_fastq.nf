process qc_raw_fastq {
    input:
    path fastq
    output:
    path "${params.fastqc_reports}/${fastq.baseName}_fastqc.html"
    path "${params.trimmed_dir}/${fastq.baseName}_trimmed.fastq"

    script:
    """
    # Run FASTQC
    fastqc ${fastq} -o ${params.fastqc_reports}
    
    # Run Trimmomatic
    trimmomatic PE ${fastq} ${fastq.baseName}_trimmed.fastq ILLUMINACLIP:${params.adapter_file}:2:30:10
    """
}
