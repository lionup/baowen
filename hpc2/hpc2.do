cd ~/git/baowen/hpc2
set more 1
cap log close
log using log_hpc2, text replace

use ../imputed.dta, clear


***************all reason, WIF, men, model 1:
*mi stset age_exitnew, failure(outwork==1) enter(xage_q)exit (age_exitnew=75)
*xi: mi estimate: stcrreg ftow i.xage_qgp if gender==0, compete(exit_type ==2)

***************all reason, WIF, men, model 2:
mi stset age_exitnew, failure(outwork==1) enter(xage_q)exit (age_exitnew=75)
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse if gender==0, compete(exit_type ==2)


***************all reason, WIF, women, model 1:
*mi stset age_exitnew, failure(outwork==1) enter(xage_q)exit (age_exitnew=75)
*xi: mi estimate: stcrreg ftow i.xage_qgp if gender==1, compete(exit_type ==2)

***************all reason, WIF, women, model 2:
*mi stset age_exitnew, failure(outwork==1) enter(xage_q)exit (age_exitnew=75)
*xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse if gender==1, compete(exit_type ==2)


saveold newresult, replace
log close
