#!/bin/sh
# Grid Engine options (lines prefixed with #$)
#$ -cwd
#$ -N pileups_cores
#$ -l h_rt=08:00:00
#$ -j yes
#$ -V

# coolfile baselist
start=`date +%s`
coolpup.py $1 $2 --outdir $3 --n_proc $4 --subset 5000 --expected $5 --nshifts 0
end=`date +%s`
runtime=$((end-start))
touch time.txt
echo $4 $runtime >> time.txt
