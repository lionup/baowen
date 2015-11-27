cd ~/git/baowen/
set more 1
use statacompleteh, clear

xi:mim,cat(fit):gllamm alcogrp part1 part2 gender lastbmi retireage i.provinces i.spstatus i.lastsmoking i.education i.skills lastincome index ///
age1991 i.lastactivity if yearcenter<=17& yearcenter>=-17&w2!=1991, i(idind newhhid) link(mlogit) family(binom) 

mimrgns,at (part1=2 part2=0) ///
	at(part1=19 part2=0) ///
	at(part1=36 part2=17) ///
	atmeans asbalanced predict(outcome(0)) post
mat nonalcohol=e(b_mi)'
svmat nonalcohol

mimrgns,at (part1=2 part2=0) ///
	at(part1=19 part2=0) ///
	at(part1=36 part2=17) ///
	atmeans asbalanced predict(outcome(1)) post
mat lmalcohol=e(b_mi)'
svmat lmalcohol

mimrgns,at (part1=2 part2=0) ///
	at(part1=19 part2=0) ///
	at(part1=36 part2=17) ///
	atmeans asbalanced predict(outcome(2)) post
	
mat heavyalcohol=e(b_mi)'
svmat heavyalcohol	

saveold newresult, replace
