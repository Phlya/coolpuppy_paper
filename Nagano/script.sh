folder=$(realpath $(cat ../datafolder))

qsub -t 1-$(cat $folder/coolers/Nagano/all_cells.txt | wc -l) 03_launch_pileups_array_nomax.sh $folder/coolers/Nagano/all_cells.txt $folder/beds/R1BPeak_All_mm9.bed pileups/

qsub -t 1-$(cat $folder/coolers/Nagano/all_cells.txt | wc -l) 03_launch_pileups_array.sh $folder/coolers/Nagano/all_cells.txt $folder/beds/Bonev_ES_CTCF_pairs_+-_mm9.bedpe pileups/
