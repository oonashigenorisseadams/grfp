#!/bin/bash

# This script runs the bedtools intersection, run within all_bed

input="/home/oona/nsf_grfp/bedtools_analysis/verify_counts/diploid_anc/filenames_tmp.txt"

while IFS= read -r line
do
  bedtools intersect -wao -a "$line"_ibd.bed -b "$line".bed > "$line"_intersect.bed
done < "$input"
