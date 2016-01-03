cd ~/git/baowen/hpc2
set more 1
cap log close
log using log_hpc2, text replace

use ../statacomplete, clear

xi:mim,cat(fit):gllamm alcogrp part1 part2 perhhincome gender lastbmi retireage i.provinces i.spstatus i.lastsmoking i.education i.skills index ///
age1991 i.lastactivity if yearcenter<=17& yearcenter>=-17&w2>1993, i(idind newhhid) link(mlogit) family(binom) 

saveold newresult, replace
log close
