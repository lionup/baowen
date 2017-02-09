cd ~/git/baowen/hpc3
set more 1
cap log close
log using log_hpc3, text replace

use ../imputed.dta, clear


************retire <60, FIW
mi stset age_exitnew, failure(retiretime==1) enter(xage_q)exit (age_exitnew=75)
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender, compete(retiretime==2 3)
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse, compete(retiretime==2 3)


saveold newresult, replace
log close
