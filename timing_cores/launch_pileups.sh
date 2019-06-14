#!/bin/sh
# Grid Engine options (lines prefixed with #$)
#$ -cwd
#$ -N pileups_cores
#$ -l h_rt=08:00:00
#$ -j yes
#$ -V

# coolfile baselist
start=`date +%s`
coolpup.py $1::resolutions/5000 $2 --outdir $3 --n_proc $4 --subset 5000 --expected $1\_5000.expected.tsv
end=`date +%s`
runtime=$((end-start))
f=$(basename ${1/:*/})
touch time_$f.txt
echo $4 $runtime >> time_$f.txt
