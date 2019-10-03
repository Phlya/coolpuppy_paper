#!/bin/sh
# Grid Engine options (lines prefixed with #$)
#$ -cwd
#$ -N pileups_subset
#$ -l h_rt=12:00:00
#$ -l h_vmem=16G
#$ -pe sharedmem 1
#$ -j yes
#$ -V

# coolfile baselist
start=`date +%s`
coolpup.py $1 $2 --outdir pileups --n_proc 1 --subset $3 --expected $4  --nshifts 0
end=`date +%s`
runtime=$((end-start))
f=$(basename ${1/:*/})
touch time_comb_$f.txt
echo $3 $runtime >> time_comb_$f.txt
