#!/bin/sh
# Grid Engine options (lines prefixed with #$)
#$ -cwd
#$ -N pileups
#$ -l h_rt=08:00:00
#$ -l h_vmem=16G
#$ -pe sharedmem 4
#$ -j yes
#$ -V

coolpup.py ../coolers/Bonev_ES.mm9.mapq_30.1000.mcool::resolutions/$1 $2 --outdir pileups --n_proc 4 --rescale --rescale_size $3 --local --minsize $4

