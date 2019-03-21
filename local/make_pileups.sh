#!/bin/sh
# Grid Engine options (lines prefixed with #$)
#$ -cwd
#$ -N pileups
#$ -l h_rt=08:00:00
#$ -l h_vmem=16G
#$ -pe sharedmem 4
#$ -j yes
#$ -V

coolpup.py $1::resolutions/25000 $2 --expected $1\_25000.expected.tsv --outdir pileups --n_proc 4 --local --pad 1000
coolpup.py $1::resolutions/25000 $2 --outdir pileups --n_proc 4 --nshifts 1 --local  --pad 1000
