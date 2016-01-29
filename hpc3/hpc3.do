cd ~/git/baowen/hpc3
set more 1
cap log close
log using log_hpc3, text replace

use ../completelong, clear

xi:mim,cat(fit):gllamm newsmok part1 part2 gender lastbmi restopage i.provinces i.lastmarriage i.lastalcogrp i.education i.skills lastincome i.village ///
age1991 i.lastactivity if yearsincerehou<=17&yearsincerehou>=-17&w2!=1991, i(idind newhhid) link(mlogit) family(binom) 

saveold newresult, replace
log close
