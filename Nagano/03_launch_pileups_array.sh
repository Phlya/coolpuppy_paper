#!/bin/sh
# Grid Engine options (lines prefixed with #$)
#$ -cwd
#$ -N pileups
#$ -l h_rt=08:00:00
#$ -l h_vmem=32G
#$ -pe sharedmem 1
#$ -j yes
#$ -V

# $1 is list of cooler files, $2=baselist
# when submitting, add -t 1-$(cat ../coolers/Nagano2017/serum_haploid/all_cells.txt | wc -l)
coolfile=$(sed "${SGE_TASK_ID}q;d" $1)
<<<<<<< HEAD
coolpup.py $(dirname $1)/$coolfile $2 --unbalanced --coverage_norm --outdir $3 --mindist 100000 --maxdist 800000 --n_proc 1 #--expected $3   #--mindist 210000 #--local --rescale --rescale_size 75 --rescale_pad 2 --minsize 10000
=======
coolpup.py $(dirname $1)/$coolfile $2 --unbalanced --coverage_norm --outdir $3 --mindist 100000 --maxdist 800000 --n_proc 1
>>>>>>> temp
