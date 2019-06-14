#!/bin/sh
# Grid Engine options (lines prefixed with #$)
#$ -cwd
#$ -N pileups
#$ -l h_rt=08:00:00
#$ -l h_vmem=32G
#$ -pe sharedmem 1
#$ -j yes
#$ -V

# $1 is file with list of cooler files, $2=baselist
# when submitting, add -t 1-$(cat ../coolers/Nagano2017/serum_haploid/all_cells.txt | wc -l)
coolfile=$(sed "${SGE_TASK_ID}q;d" $1)

coolpup.py $(dirname $1)/$coolfile $2 --unbalanced --coverage_norm --outdir $3 --mindist 100000 --maxdist 800000 --n_proc 1

