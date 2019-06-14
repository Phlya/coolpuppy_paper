#!/bin/sh
# Grid Engine options (lines prefixed with #$)
#$ -cwd
#$ -N pileups
#$ -l h_rt=08:00:00
#$ -l h_vmem=4G
#$ -pe sharedmem 4
#$ -j yes
#$ -V

coolpup.py $1 $2 --outdir pileups --n_proc 4 --nshifts 10 --rescale --local --unbalanced --coverage_norm --rescale_size 87
coolpup.py $1 $3 --outdir pileups --n_proc 4 --nshifts 10 --unbalanced --coverage_norm --mindist 100000
