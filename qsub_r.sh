#!/bin/bash
source ~/.bash_profile

#$ -o r.sgelog
#$ -q batch.q
#$ -j y
#$ -N r_ran
#$ -S /bin/bash
#$ -cwd 				

. /etc/profile.d/modules.sh
module load r/3.1.3
module load gcc/4.9.2
echo "loaded modules"
module list

R --no-save --slave < hpc.r > r.Rout
