cd ~/git/baowen/hpc
set more 1
cap log close
log using log_hpc, text replace

use ../EWL_mergedfiles_imputed.dta, clear

gen ageenter=agexp
mi stset age_exitB,enter(ageenter) failure(fail=1)

mi estimate,hr:stcrreg lastwtof agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic if sex==1& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)



saveold newresult, replace
log close
