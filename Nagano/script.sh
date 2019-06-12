qsub -t 1-$(cat ../coolers/Nagano2017/all_cells.txt | wc -l) 03_launch_pileups_array.sh ../coolers/Nagano2017/all_cells.txt ../beds/R1BPeak_All_mm9.bed pileups/serum_diploid/

qsub -t 1-$(cat ../coolers/Nagano2017/all_cells.txt | wc -l) 03_launch_pileups_array.sh ../coolers/Nagano2017/all_cells.txt ../beds/Bonev_ES_CTCF_pairs_+-_mm9.bedpe pileups/serum_diploid/
