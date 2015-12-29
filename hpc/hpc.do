cd ~/git/baowen/hpc
set more 1
cap log close
log using log_hpc, text replace

use ../statacomplete, clear

xi:mim,cat(fit):gllamm newsmoke part1 part2 gender lastbmi retireage i.provinces i.spstatus i.lastalcogrp i.education i.skills lastincome index ///
age1991 i.lastactivity if yearcenter<=17& yearcenter>=-17& back!=1, i(idind newhhid) link(mlogit) family(binom) 

saveold newresult, replace
log close
