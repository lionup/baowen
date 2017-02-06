#!/bin/bash -l

#BSUB -q shared
#BSUB -W 24:00
#BSUB -J hpc5

#BSUB -n 16
##BSUB -R "span[hosts=1]"

#BSUB -o grace.output.%J   # output file name in which %J is replaced by the job ID
#BSUB -N                   # sent email

# 9. load modules
module load Apps/Stata/13.1

stata-mp -b do hpc5.do
