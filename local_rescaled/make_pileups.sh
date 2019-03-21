#!/bin/sh
# Grid Engine options (lines prefixed with #$)
#$ -cwd
#$ -N pileups
#$ -l h_rt=08:00:00
#$ -l h_vmem=16G
#$ -pe sharedmem 4
#$ -j yes
#$ -V

coolpup.py $1::resolutions/$2 $3 --outdir pileups --n_proc 4 --expected $1_$2.expected.tsv --rescale --rescale_size $4 --local --minsize $5

