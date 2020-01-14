#!/bin/sh
# Grid Engine options (lines prefixed with #$)
#$ -cwd
#$ -N pileups
#$ -l h_rt=08:00:00
#$ -l h_vmem=32G
#$ -pe sharedmem 1
#$ -j yes
#$ -V
#$ -o ./job_output/
#$ -e ./job_err/

# $1 is file with list of cooler files, $2=baselist
# when submitting, add -t 1-$(cat path_to_all_cells.txt | wc -l)
coolfile=$(sed "${SGE_TASK_ID}q;d" $1)

coolpup.py $(dirname $1)/$coolfile $2 --unbalanced --coverage_norm --outdir $3 --mindist 100000 --maxdist 800000 --n_proc 1

