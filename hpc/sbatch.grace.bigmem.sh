#!/bin/bash
#!
#!#############################################################
#!#### Modify the options in this section as appropriate ######
#!#############################################################

#! sbatch directives begin here ###############################
##SBATCH -p day
##SBATCH -p pi_cowles
#SBATCH -p bigmem

#! Name of the job:
#SBATCH -J hpc

##SBATCH --ntasks=1 --nodes=1
##SBATCH --nodes=1 --cpus-per-task=4
##SBATCH --ntasks=1 --cpus-per-task=10
#SBATCH --ntasks=1

#SBATCH --mem 800G
##SBATCH --mem-per-cpu=20480
##SBATCH --mem-per-cpu=6000 
##SBATCH --mem-per-cpu=MaxMemPerCPU

#! How much wallclock time will be required?
#SBATCH --time=24:00:00

#! What types of email messages do you wish to receive?
#SBATCH --mail-type=FAIL


module load Apps/Stata/15.1

stata-mp -b do hpc.do
