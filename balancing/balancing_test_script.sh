folder=$(realpath $(cat ../datafolder))
cool="$folder/coolers/Bonev_ES.mm9.mapq_30.1000.mcool"

for bed in $folder/beds/HiC_ESmapq30_CTCF_5kb_nottwoRING1B_5kb.bedpe $folder/beds/HiC_ESmapq30_nottwoCTCF_5kb_RING1B_5kb.bedpe $folder/beds/R1BPeak_R1BQ_Q4.bed ; do
  qsub make_pileups.sh $cool $bed;
done
