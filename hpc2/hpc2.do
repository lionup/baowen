cd ~/git/baowen/hpc2
set more 1
cap log close
log using log_hpc2, text replace

use ../statacompleteh, clear

xi:mim,cat(fit):gllamm smokingatwave part1 part2 gender lastbmi retireage i.provinces i.spstatus i.lastalcogrp i.education i.skills lastincome index ///
age1991 i.lastactivity if yearcenter<=17& yearcenter>=-17, i(idind newhhid) link(mlogit) family(binom) 

mimrgns,at (part1=2 part2=0) ///
	at(part1=19 part2=0) ///
	at(part1=36 part2=17) ///
	atmeans asbalanced predict(outcome(0)) post
mat nonsmoke=e(b_mi)'
svmat nonsmoke

mimrgns,at (part1=2 part2=0) ///
	at(part1=19 part2=0) ///
	at(part1=36 part2=17) ///
	atmeans asbalanced predict(outcome(1)) post
mat lmsmoke=e(b_mi)'
svmat lmsmoke

mimrgns,at (part1=2 part2=0) ///
	at(part1=19 part2=0) ///
	at(part1=36 part2=17) ///
	atmeans asbalanced predict(outcome(2)) post

mat heavysmoke=e(b_mi)'
svmat heavysmoke

saveold newresult2, replace
log close
