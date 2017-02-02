#!/bin/bash -l
#$ -S /bin/bash
#$ -l h_rt=12:0:0
#$ -N stata_ran
#$ -pe smp 16
#$ -wd /home/uctprgu/Scratch/bgllm3
#$ -j y
#$ -M uctprgu@ucl.ac.uk	# send notifications to
#$ -m e # notify about end of job

# 9. load modules
module unload compilers
module load r/recommended

R --no-save --slave < $HOME/git/bgllm3/R/run.modelC.sim.r > r.output.$JOB_ID
#R --no-save --slave < $HOME/git/bgllm3/R/run.modelC.lem.r > r.output.$JOB_ID
#R --no-save --slave < $HOME/git/bgllm3/R/run.modelC_sim_track.r > r.output.$JOB_ID
