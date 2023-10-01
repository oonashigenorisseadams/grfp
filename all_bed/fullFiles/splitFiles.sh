#for i in {ACB,ASW,CLM,MXL,PEL,PUR}
#do
#	awk '{print $5"\t"$6"\t"$7 >> "splitFiles/"$1"_ibd.bed"}' "$i"_allChroms.ibd
#	awk '{print $5"\t"$6"\t"$7 >> "splitFiles/"$3"_ibd.bed"}' "$i"_allChroms.ibd

#done
