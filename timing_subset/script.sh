for i in {1..5};
do
  for sub in 100 200 400 800 1600 3200 6400 12800 25600 51200 102400 204800 409600 819200 1638400 3276800;
  do
    qsub launch_pileups.sh ../coolers/Bonev_ES.mm9.mapq_30.1000.mcool::resolutions/5000 ../beds/CTCF_sites/Bonev_ES_CTCF_pairs_+-_mm9.bedpe $sub ../coolers/Bonev_ES.mm9.mapq_30.1000.mcool_5000.expected.tsv;
  done;
done

for i in {1..5};
do
  for sub in 100 200 400 800 1600 3200 6400 12800 25600 51200 102400 204800;
  do
    qsub launch_pileups_comb.sh ../coolers/Bonev_ES.mm9.mapq_30.1000.mcool::resolutions/5000 ../beds/B3_mm9.bed $sub ../coolers/Bonev_ES.mm9.mapq_30.1000.mcool_5000.expected.tsv;
  done;
done
