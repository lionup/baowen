cd ~/git/baowen/hpc3
set more 1
cap log close
log using log_hpc3, text replace

use ../statacompleteh, clear

xi:mim,cat(fit):gllamm newsmoke part1 part2 gender lastbmi retireage i.provinces i.spstatus i.lastalcogrp i.education i.skills lastincome index ///
age1991 i.lastactivity if yearcenter<=17& yearcenter>=-17, i(idind newhhid) link(mlogit) family(binom) 

matrix coefhpcsmo=e(MIM_Q)'
svmat coefhpcsmo

saveold newresult, replace
log close
