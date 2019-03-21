for cool in ../coolers/snHi-C/Scc1-control.10000.cool ../coolers/snHi-C/Scc1-KO.10000.cool;
do
  qsub make_pileups.sh $cool;
done
