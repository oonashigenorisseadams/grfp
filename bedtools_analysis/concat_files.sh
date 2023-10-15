#!/bin/bash

# This script concatenates all the lac bed files, run within all_bed

for id in $(find . -name "*bed" | cut -f1 -d_ | sort | uniq); do
  cat $(find . -wholename "${id}*") > ${id}.bed
  #awk -F'\t' 'BEGIN {OFS = FS} {$7 = "seg"$2; print}' ${id}_notab.bed > ${id}.bed
done
