#!/bin/sh
# Grid Engine options (lines prefixed with #$)
#$ -cwd
#$ -N pileups
#$ -l h_rt=08:00:00
#$ -l h_vmem=8G
#$ -pe sharedmem 4
#$ -j yes
#$ -V

coolpup.py $1::resolutions/5000 $2 --outdir pileups --n_proc 4 --nshifts 0
coolpup.py $1::resolutions/5000 $2 --expected $1\_5000.expected.tsv --outdir pileups --n_proc 4 --nshifts 0
for nshifts in 1 10; do 
  coolpup.py $1::resolutions/5000 $2 --outdir pileups --n_proc 4 --nshifts $nshifts
done

