#!/bin/sh
# Grid Engine options (lines prefixed with #$)
#$ -cwd
#$ -N pileups
#$ -l h_rt=08:00:00
#$ -l h_vmem=8G
#$ -pe sharedmem 4
#$ -j yes
#$ -V

coolpup.py ../coolers/Bonev_ES.mm9.mapq_30.1000.mcool::resolutions/5000 $1 --outdir pileups --n_proc 4 --expected ../coolers/Bonev_ES.mm9.mapq_30.1000.mcool_5000.expected.tsv
coolpup.py ../coolers/Bonev_ES.mm9.mapq_30.1000.mcool::resolutions/5000 $1 --outdir pileups --n_proc 4 --expected ../coolers/Bonev_ES.mm9.mapq_30.1000.mcool_5000.expected.tsv --unbalanced
coolpup.py ../coolers/Bonev_ES.mm9.mapq_30.1000.mcool::resolutions/5000 $1 --outdir pileups --n_proc 4 --expected ../coolers/Bonev_ES.mm9.mapq_30.1000.mcool_5000.expected.tsv --unbalanced --coverage_norm

