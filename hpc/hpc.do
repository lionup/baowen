cd ~/git/baowen/hpc
set more 1
cap log close
log using log_hpc, text replace

use ../completelong, clear

mi estimate: xtmixed sbp part1 part2 gender lastbmi  restopage i.provinces i.lastmarriage i.lastalcogrp i.lastsmoking i.education i.skills lastincome i.village i.anti ///
age1991 i.lastactivity if yearsincerehou<=17&yearsincerehou>=-17|| newhhid:|| idind:posiyearcenter,covariance(unstructured) mle var 

saveold newresult, replace
log close
