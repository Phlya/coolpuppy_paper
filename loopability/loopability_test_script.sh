for bed in ../beds/CGI*.bed; do
  qsub make_pileups.sh $bed;
done
