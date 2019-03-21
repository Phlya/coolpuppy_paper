for i in {1..5};
do
  for ncores in 1 2 4 6 8 12 16;
  do
    if [ $ncores = 1 ]
      then mem="12G"
      else mem="8G"
    fi;
    qsub -l h_vmem=$mem -pe sharedmem $ncores launch_pileups.sh ../coolers/Bonev_ES.mm9.mapq_30.1000.mcool::resolutions/5000 ../beds/B3_mm9.bed ./ $ncores ../coolers/Bonev_ES.mm9.mapq_30.1000.mcool_5000.expected.tsv;
  done;
done
