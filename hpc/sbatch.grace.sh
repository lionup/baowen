#!/bin/bash
#!
#!#############################################################
#!#### Modify the options in this section as appropriate ######
#!#############################################################

#! sbatch directives begin here ###############################
#! Name of the job:
#SBATCH -J hpc

##SBATCH --ntasks=1 --nodes=1
##SBATCH --nodes=1 --cpus-per-task=4
##SBATCH --ntasks=1 --cpus-per-task=1
#SBATCH --ntasks=1

#SBATCH --mem 120G
##SBATCH --mem-per-cpu=122880
##SBATCH --mem-per-cpu=6000 
##SBATCH --mem-per-cpu=MaxMemPerCPU

#! How much wallclock time will be required?
#SBATCH --time=24:00:00

#! What types of email messages do you wish to receive?
#SBATCH --mail-type=FAIL

#! Do not change:
##SBATCH -p day
#SBATCH -p pi_cowles

module load Apps/Stata/15.1

stata-mp -b do hpc.do
