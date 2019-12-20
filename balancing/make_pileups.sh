#!/bin/sh
# Grid Engine options (lines prefixed with #$)
#$ -cwd
#$ -N pileups
#$ -l h_rt=08:00:00
#$ -l h_vmem=8G
#$ -pe sharedmem 4
#$ -j yes
#$ -V

coolpup.py $1::resolutions/5000 $2 --outdir pileups --n_proc 4 --nshifts 10
coolpup.py $1::resolutions/5000 $2 --outdir pileups --n_proc 4 --nshifts 10 --unbalanced
coolpup.py $1::resolutions/5000 $2 --outdir pileups --n_proc 4 --nshifts 10 --unbalanced --coverage_norm

