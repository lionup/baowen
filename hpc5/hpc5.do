cd ~/git/baowen/hpc5
set more 1
cap log close
log using log_hpc5, text replace

use ../imputed_march.dta, clear

mi stset time2, id(id) failure(exit_typeLvar==5) exit(allexit==1)

*model 4
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 4 6)
*mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 4 6)
*mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 4 6)
*mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 4 6)


saveold newresult, replace
log close
