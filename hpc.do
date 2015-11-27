cd ~/git/baowen/
use statacompleteh, clear

mi estimate: xtmixed waist part1 part2 gender lastbmi retireage i.provinces i.spstatus i.lastalcogrp i.lastsmoking i.education i.skills lastincome index i.anti ///
age1991 i.lastactivity if yearcenter<=17& yearcenter>=-17 &w2!=1991 || newhhid:|| idind: posiyearcenter,covariance(unstructured) mle var 

mimrgns,at (part1=2 part2=0) ///
	at(part1=3 part2=0) ///
	at(part1=18 part2=0) ///
	at(part1=19 part2=0) ///
	at(part1=20 part2=1) ///
	at(part1=21 part2=2) ///
	at(part1=36 part2=17) ///
	atmeans asbalanced post

mat b= e(b_mi)                       
mat V = e(V_mi) 
matrix wc2knot=e(b_mi)'
svmat wc2knot
capture drop year2knot
matrix year2knot=(2\3\18\19\20\21\36)
svmat year2knot

mi estimate: xtmixed waist i.posiyearcenter gender lastbmi retireage i.provinces i.spstatus i.lastalcogrp i.lastsmoking i.education i.skills lastincome index i.anti ///
age1991 i.lastactivity if yearcenter<=17& yearcenter>=-17&w2!=1991|| newhhid:|| idind:, mle var
mimrgns i.posiyearcenter, atmeans asbalanced cmdmargins 
mata: st_global("r(cmd)", "margins")
marginsplot,noci xline(19,lpattern(dash)) xlab(none) xtitle(Year centered on retirement)  ///  
addplot(line wc2knot year2knot, xlab(none) legend(order(1 "Adjusted mean of actual data" 2 " Predicted trajectory"))) 

saveold newresult, replace
