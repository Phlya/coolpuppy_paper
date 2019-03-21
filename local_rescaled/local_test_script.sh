for cool in ../coolers/{Untreated,Auxin,Washoff}.mm9.mapq_30.1000.mcool; do
  qsub make_pileups.sh $cool 5000 "../beds/TADs_Bonev_ES.mm9.mapq_30.1000.mcool_25000_IS1000000_minBS_0.1.bed" 99 10000
done
