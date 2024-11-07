process qc_raw_fastq {
    input:
    path fastq_files from params.fastq

    output:
    path "${params.fastqc_reports}/fastqc_report_*.html"

    script:
    """
    fastqc -o ${params.fastqc_reports} $fastq_files
    """
}