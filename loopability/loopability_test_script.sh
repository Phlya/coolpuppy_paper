folder=$(realpath $(cat ../datafolder))
cool=$folder/coolers/Bonev_ES.mm9.mapq_30.1000.mcool
for bed in $folder/beds/CGI*.bed; do
  qsub make_pileups.sh $cool $bed;
done
