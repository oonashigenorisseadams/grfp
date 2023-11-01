#!/usr/bin/env bash

input="/home/oona/nsf_grfp/bedtools_analysis/verify_counts/diploid_anc/filenames_tmp.txt"
DIR="/home/oona/nsf_grfp/bedtools_analysis/verify_counts/diploid_anc"

while IFS= read -r line
do
	cat "$DIR"/AFR_AFR/"$line".bed "$DIR"/AFR_EUR/"$line".bed "$DIR"/AFR_NAT/"$line".bed "$DIR"/EUR_EUR/"$line".bed "$DIR"/EUR_NAT/"$line".bed "$DIR"/NAT_NAT/"$line".bed > "$DIR"/combined/"$line".bed
done < "$input"
