#!/bin/bash -l

#BSUB -q cowles
#BSUB -W 24:00
#BSUB -J hpc9

#BSUB -n 4
##BSUB -R "span[hosts=1]"

#BSUB -o grace.output.%J   # output file name in which %J is replaced by the job ID
#BSUB -N                   # sent email

# 9. load modules
module load Apps/Stata/13.1

stata-mp -b do hpc9.do
