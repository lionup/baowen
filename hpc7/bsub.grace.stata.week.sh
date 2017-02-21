#!/bin/bash -l

#BSUB -q week
#BSUB -W 168:00
#BSUB -J hpc7

#BSUB -n 4
##BSUB -R "span[hosts=1]"

#BSUB -o grace.output.%J   # output file name in which %J is replaced by the job ID
#BSUB -N                   # sent email

# 9. load modules
module load Apps/Stata/13.1

stata-mp -b do hpc7.do