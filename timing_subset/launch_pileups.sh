#!/bin/sh
# Grid Engine options (lines prefixed with #$)
#$ -cwd
#$ -N pileups_subset
#$ -l h_rt=12:00:00
#$ -l h_vmem=16G
#$ -pe sharedmem 4
#$ -j yes
#$ -V

# coolfile baselist
start=`date +%s`
coolpup.py $1 $2 --outdir pileups --n_proc 4 --subset $3 --expected $4  --nshifts 0
end=`date +%s`
runtime=$((end-start))
touch time.txt
echo $3 $runtime >> time.txt
