cd ~/git/baowen/hpc4
set more 1
cap log close
log using log_hpc4, text replace

use ../imputed.dta, clear

gen outwork=1
replace outwork=0 if exit_type==0
replace outwork=0 if exit_type==2
mi stset age_exitnew, failure(outwork==1) enter(xage_q)exit (age_exitnew=75)
*model 1:
*xi: mi estimate: stcrreg ftow i.xage_qgp i.gender, compete(exit_type ==2)
*xi: mi estimate: stcrreg wtof i.xage_qgp i.gender, compete(exit_type ==2)


*mode1 2:
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse , compete(exit_type ==2)
xi: mi estimate: stcrreg wtof i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse, compete(exit_type ==2)
*model 3:
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse i.xdeclatt i.xjobdemt i.support, compete(exit_type ==2)
xi: mi estimate: stcrreg wtof i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse i.xdeclatt i.xjobdemt i.support, compete(exit_type ==2)


saveold newresult, replace
log close
