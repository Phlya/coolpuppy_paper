#!/bin/sh
# Grid Engine options (lines prefixed with #$)
#$ -cwd
#$ -N pileups
#$ -l h_rt=08:00:00
#$ -l h_vmem=8G
#$ -pe sharedmem 4
#$ -j yes
#$ -V

coolpup.py $1::resolutions/5000 $2 --expected $1_5000.expected.tsv --outdir enrichment --n_proc 4 --by_window --save_all
