#!/bin/sh
# Grid Engine options (lines prefixed with #$)
#$ -cwd
#$ -N pileups_hicexplorer
#$ -l h_rt=24:00:00
#$ -l h_vmem=512G
#$ -pe sharedmem 1
#$ -j yes
#$ -V

# coolfile baselist
start=`date +%s`
shuf -n $3 $2 | hicAggregateContacts -m $1 --BED - --outFileName pileups/test.png --range 105000:1000000000000 --avgType mean --transform obs/exp
end=`date +%s`
runtime=$((end-start))
f=$(basename ${1/:*/})
touch time_comb_HiCExplorer_$f.txt
echo $3 $runtime >> time_comb_HiCExplorer_$f.txt
