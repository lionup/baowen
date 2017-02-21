cd ~/git/baowen/hpc
set more 1
cap log close
log using log_hpc, text replace

use ../imputed.dta, clear

***************all reason, FIW, Administrative, women, model 1:
mi stset age_exitnew, failure(outwork==1) enter(xage_q)exit (age_exitnew=75)
xi: mi estimate: stcrreg ftow i.xage_qgp  if xrgrlump==0&gender==1, compete(exit_type ==2)
***************all reason, FIW, Administrative, women,model 2:
mi stset age_exitnew, failure(outwork==1) enter(xage_q)exit (age_exitnew=75)
xi: mi estimate: stcrreg ftow i.xage_qgp  i.tedlev i.xrgrlump i.depress i.chronic i.spouse if xrgrlump==0&gender==1, compete(exit_type ==2)
***************all reason, FIW,Prof/Exec, women,model 1:
mi stset age_exitnew, failure(outwork==1) enter(xage_q)exit (age_exitnew=75)
xi: mi estimate: stcrreg ftow i.xage_qgp  if xrgrlump==1&gender==1, compete(exit_type ==2)
***************all reason, FIW, Prof/Exec,women, model 2:
mi stset age_exitnew, failure(outwork==1) enter(xage_q)exit (age_exitnew=75)
xi: mi estimate: stcrreg ftow i.xage_qgp  i.tedlev i.xrgrlump i.depress i.chronic i.spouse if xrgrlump==1&gender==1, compete(exit_type ==2)
***************all reason, FIW, Clerical,women, model 1:
mi stset age_exitnew, failure(outwork==1) enter(xage_q)exit (age_exitnew=75)
xi: mi estimate: stcrreg ftow i.xage_qgp  if xrgrlump==2&gender==1, compete(exit_type ==2)
***************all reason, FIW, Clerical,women, model 2:
mi stset age_exitnew, failure(outwork==1) enter(xage_q)exit (age_exitnew=75)
xi: mi estimate: stcrreg ftow i.xage_qgp  i.tedlev i.xrgrlump i.depress i.chronic i.spouse if xrgrlump==2&gender==1, compete(exit_type ==2)



saveold newresult, replace
log close
