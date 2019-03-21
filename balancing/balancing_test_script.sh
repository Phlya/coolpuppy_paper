for bed in ../beds/HiC_ESmapq30_CTCF_5kb_nottwoRING1B_5kb.bedpe ../beds/HiC_ESmapq30_nottwoCTCF_5kb_RING1B_5kb.bedpe ../beds/R1BPeak_R1BQ_Q4.bed ; do
  qsub make_pileups.sh $bed;
done
