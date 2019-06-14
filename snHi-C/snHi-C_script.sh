folder=$(realpath $(cat ../datafolder))

bed1=$folder/beds/CH12_TADs_Rao.bed
bed2=$folder/beds/CH12_loops_Rao.bed

for cool in $folder/coolers/Scc1-control.10000.cool $folder/coolers/Scc1-KO.10000.cool;
do
  qsub make_pileups.sh $cool $bed1 $bed2;
done
