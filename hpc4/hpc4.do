cd ~/git/baowen/hpc4
set more 1
cap log close
log using log_hpc4, text replace

use ../completelong, clear

mi estimate: xtmixed waist part1 part2 gender lastbmi restopage i.provinces i.lastmarriage i.lastalcogrp i.lastsmoking i.education i.skills lastincome i.village  ///
age1991 i.lastactivity if yearsincerehou<=17&yearsincerehou>=-17&w2!=1991|| newhhid:|| idind: posiyearcenter,covariance(unstructured) mle var 

saveold newresult, replace
log close
