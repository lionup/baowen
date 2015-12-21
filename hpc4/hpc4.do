cd ~/git/baowen/hpc4
set more 1
cap log close
log using log_hpc4, text replace

use ../statacomplete, clear

mi estimate: xtmixed sysdrug part1 part2 i.alcogrpmed gender lastbmi retireage i.provinces i.spstatus  i.lastsmoking i.education i.skills lastincome index i.anti ///
age1991 i.lastactivity if yearcenter<=17& yearcenter>=-17& wave>1991 || newhhid:|| idind: posiyearcenter,covariance(unstructured) mle var 



*saveold newresult, replace
log close
