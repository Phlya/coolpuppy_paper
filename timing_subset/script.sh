folder=$(realpath $(cat ../datafolder))
coolers="$folder/coolers/Bonev_ES.mm9.mapq_30.1000.mcool $folder/coolers/Untreated.mm9.mapq_30.1000.mcool"
for i in {1..5};
do
  for sub in 100 200 400 800 1600 3200 6400 12800 25600 51200 102400 204800 409600 819200 1638400 3276800;
  do
    for cool in $coolers;
    do 
      qsub launch_pileups.sh $cool::resolutions/5000 $folder/beds/Bonev_ES_CTCF_pairs_+-_mm9.bedpe $sub $cool\_5000.expected.tsv;
    done
  done;
done

for i in {1..5};
do
  for sub in 25600 51200; #100 200 400 800 1600 3200 6400 12800 
  do    
    for cool in $coolers;
    do
      qsub launch_pileups_comb.sh $cool::resolutions/5000 $folder/beds/B3_mm9.bed $sub $cool\_5000.expected.tsv;
      qsub launch_pileups_hicexplorer.sh $cool::resolutions/5000 $folder/beds/B3_mm9.bed $sub
    done;
  done;
done
