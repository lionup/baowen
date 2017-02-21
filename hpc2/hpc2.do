cd ~/git/baowen/hpc2
set more 1
cap log close
log using log_hpc2, text replace

use ../imputed.dta, clear



***************all reason, WIF, Administrative, men, model 1:
mi stset age_exitnew, failure(outwork==1) enter(xage_q)exit (age_exitnew=75)
xi: mi estimate: stcrreg wtof i.xage_qgp  if xrgrlump==0&gender==0, compete(exit_type ==2)
***************all reason, WIF, Administrative, men,model 2:
mi stset age_exitnew, failure(outwork==1) enter(xage_q)exit (age_exitnew=75)
xi: mi estimate: stcrreg wtof i.xage_qgp  i.tedlev i.xrgrlump i.depress i.chronic i.spouse if xrgrlump==0&gender==0, compete(exit_type ==2)
***************all reason, WIF,Prof/Exec, men,model 1:
mi stset age_exitnew, failure(outwork==1) enter(xage_q)exit (age_exitnew=75)
xi: mi estimate: stcrreg wtof i.xage_qgp  if xrgrlump==1&gender==0, compete(exit_type ==2)
***************all reason, WIF, Prof/Exec,men, model 2:
mi stset age_exitnew, failure(outwork==1) enter(xage_q)exit (age_exitnew=75)
xi: mi estimate: stcrreg wtof i.xage_qgp  i.tedlev i.xrgrlump i.depress i.chronic i.spouse if xrgrlump==1&gender==0, compete(exit_type ==2)
***************all reason, WIF, Clerical,men, model 1:
mi stset age_exitnew, failure(outwork==1) enter(xage_q)exit (age_exitnew=75)
xi: mi estimate: stcrreg wtof i.xage_qgp  if xrgrlump==2&gender==0, compete(exit_type ==2)
***************all reason, WIF, Clerical,men, model 2:
mi stset age_exitnew, failure(outwork==1) enter(xage_q)exit (age_exitnew=75)
xi: mi estimate: stcrreg wtof i.xage_qgp  i.tedlev i.xrgrlump i.depress i.chronic i.spouse if xrgrlump==2&gender==0, compete(exit_type ==2)



saveold newresult, replace
log close
