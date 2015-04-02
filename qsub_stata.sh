#!/bin/bash
#$ -cwd 				
#$ -o stata.sgelog
#$ -q batch.q
#$ -j y
#$ -N stata_ran
#$ -S /bin/bash

. /etc/profile.d/modules.sh
module load stata/1-wrapper
echo "loaded modules"
module list

#stata -q batch.q --slots 4 --largemem --qsub -b do  highspeedmi.do
stata -q batch.q --slots 4 --largemem --qsub -b do  bismoking.do
