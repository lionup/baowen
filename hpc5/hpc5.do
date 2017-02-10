cd ~/git/baowen/hpc5
set more 1
cap log close
log using log_hpc5, text replace

use ../imputed.dta, clear

******************retire>60, FIW
mi stset age_exitnew, failure(retiretime==2) enter(xage_q)exit (age_exitnew=75)
*xi: mi estimate: stcrreg ftow i.xage_qgp i.gender, compete(retiretime==1 3)
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse, compete(retiretime==1 3)

saveold newresult, replace
log close
