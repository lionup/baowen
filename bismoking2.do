
set more off

cd ~/git/baowen/
use miedlong, clear

mi estimate: xtlogit bismoking re4m re5m gender i.retireageg i.provinces i.workspouse i.lastalcohol i.education i.skills lastincome i.stratum ///
birthcohort i.lastactivity if  basmoke==1& flag==1&yrsinceretire>=-17&yrsinceretire<=17&wave>=1991, pa vce(robust)
mi estimate, cmdok: linesmo 1

mat smo2knot=e(b_mi)'
svmat smo2knot
matrix year2knot=(5\6\21\22\23\39)
svmat year2knot
saveold miedlong2,replace
*************use xtlogit to simple the model, no multilevel********************************
mi estimate: xtlogit bismoking i.centerretire gender i.retireageg i.provinces i.workspouse i.lastalcohol i.education i.skills lastincome i.stratum ///
birthcohort i.lastactivity if  basmoke==1& flag==1&yrsinceretire>=-17&yrsinceretire<=17&wave>=1991

mi estimate, cmdok: mimarginsmo 1 
mat b= e(b_mi)                
mat V = e(V_mi)

estimates save smokcenter

quietly xtlogit bismoking i.centerretire gender i.retireageg i.provinces  i.workspouse i.lastalcohol i.education i.skills lastincome i.stratum ///
birthcohort i.lastactivity if  basmoke==1& flag==1&yrsinceretire>=-17&yrsinceretire<=17&wave>=1991

quietly margins centerretire, atmeans asbalanced

myret
mata: st_global("e(cmd)", "margins") 


marginsplot,noci  xline(22,lpattern(dash)) xlab(none) xtitle(year centered on retirement) title(" Smoking status") ///  
addplot(line smo2knot year2knot1,  xlab(none) xtitle(year centered on retirement) legend(order(1 "adjusted probability" 2 " predited trajectory of probability"))

graph export mygraph.png

