process trim_reads {
    input:
    path fastq_files from qc_raw_fastq

    output:
    path "${params.trimmed_dir}/trimmed_*.fastq"

    script:
    """
    trimmomatic PE -phred33 ${fastq_files} ${params.adapter_file} ${params.trimmed_dir}/trimmed_1.fastq ${params.trimmed_dir}/unpaired_1.fastq ${params.trimmed_dir}/trimmed_2.fastq ${params.trimmed_dir}/unpaired_2.fastq
    """
}