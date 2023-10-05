#!/bin/bash
docker run -it --rm \
    -v $PWD:/data \
    -v /illumina/analysis/prod_pipeline/genomes/H_sapiens/b37/:/ref \
    broadinstitute/gatk:4.1.4.1 \
    gatk SortVcf \
    --INPUT /data/hg19_inhouse.vcf \
    --OUTPUT /data/out.vcf \
    --SEQUENCE_DICTIONARY /ref/human_g1k_v37.dict