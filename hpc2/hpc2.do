cd ~/git/baowen/hpc2
set more 1
cap log close
log using log_hpc2, text replace

use ../EWL_mergedfiles_imputed.dta, clear

gen ageenter=agexp
mi stset age_exitB,enter(ageenter) failure(fail=1)


*model 3

stcrreg lastftow agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic i.lastjobdemt i.lastdeclatt i.lastjobsupp if sex==1& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
stcrreg lastftow agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic i.lastjobdemt i.lastdeclatt i.lastjobsupp  if sex==2& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
stcrreg lastwtof agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic i.lastjobdemt i.lastdeclatt i.lastjobsupp  if sex==1& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
stcrreg lastwtof agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic i.lastjobdemt i.lastdeclatt i.lastjobsupp  if sex==2& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)


/*
*model 5

stcrreg lastftow agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic i.lastnchild i.lastconthm i.lastcarer i.lastjobdemt i.lastdeclatt i.lastjobsupp if sex==1& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
stcrreg lastftow agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic i.lastnchild i.lastconthm i.lastcarer i.lastjobdemt i.lastdeclatt i.lastjobsupp if sex==2& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
stcrreg lastwtof agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic i.lastnchild i.lastconthm i.lastcarer i.lastjobdemt i.lastdeclatt i.lastjobsupp if sex==1& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
stcrreg lastwtof agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic i.lastnchild i.lastconthm i.lastcarer i.lastjobdemt i.lastdeclatt i.lastjobsupp if sex==2& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
*/



saveold newresult, replace
log close
