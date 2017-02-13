cd ~/git/baowen/hpc3
set more 1
cap log close
log using log_hpc3, text replace

use ../imputed.dta, clear


**************************all reason, FIW, not early, model 1:
*mi stset age_exitnew, failure(outwork==1) enter(xage_q)exit (age_exitnew=75)
*xi: mi estimate: stcrreg ftow i.xage_qgp i.gender if early==0, compete(exit_type ==2)
***************************all reason, FIW, not early, model 2:
*mi stset age_exitnew, failure(outwork==1) enter(xage_q)exit (age_exitnew=75)
*xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse if i.early==0, compete(exit_type ==2)
**************************all reason, FIW, early, model 1:
mi stset age_exitnew, failure(outwork==1) enter(xage_q)exit (age_exitnew=75)
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender if early==1, compete(exit_type ==2)
**************************all reason, FIW, early, model 2:
*mi stset age_exitnew, failure(outwork==1) enter(xage_q)exit (age_exitnew=75)
*xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse if i.early==1, compete(exit_type ==2)


saveold newresult, replace
log close
