#!/bin/bash -l
#$ -S /bin/bash
#$ -l h_rt=12:0:0
#$ -l mem=8G
#$ -N stata_ran
#$ -pe smp 4
#$ -wd /home/uctprgu/Scratch/baowen
#$ -j y
#$ -M uctprgu@ucl.ac.uk	# send notifications to
#$ -m e # notify about end of job

# 9. load modules
module load stata/14


R --no-save --slave < $HOME/git/bgllm3/R/run.modelC.sim.r > r.output.$JOB_ID
#R --no-save --slave < $HOME/git/bgllm3/R/run.modelC.lem.r > r.output.$JOB_ID
#R --no-save --slave < $HOME/git/bgllm3/R/run.modelC_sim_track.r > r.output.$JOB_ID
