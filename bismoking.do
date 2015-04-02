
set more off

cd ~/git/baowen/
use miedlong, clear

mi estimate: xtmelogit bismoking re4m re5m gender  i.retireageg i.provinces  i.workspouse i.lastalcohol i.lastsmoke i.education i.skills lastincome i.stratum ///
birthcohort i.lastactivity if basys==1& flag==1&yrsinceretire>=-17&yrsinceretire<=17 || communityid:|| idind:, mle var
mi estimate, cmdok: linesmo 1

mat smo2knot=e(b_mi)'
svmat smo2knot
matrix year2knot=(5\6\21\22\23\39)
svmat year2knot

*************use xtlogit to simple the model, no multilevel********************************
mi estimate: xtlogit bismoking i.centerretire gender urban i.retireageg i.provinces i.workspouse ///
i.lastalcohol i.education i.skills lastincome birthcohort ///
if flag==1&yrsinceretire>=-17&yrsinceretire<=17&wave>=1991

mi estimate, cmdok: mimarginsmo 1 
mat b= e(b_mi)                
mat V = e(V_mi)

quietly xtlogit bismoking i.centerretire gender urban i.retireageg i.provinces i.workspouse ///
i.lastalcohol i.education i.skills lastincome birthcohort ///
if flag==1&yrsinceretire>=-17&yrsinceretire<=17&wave>=1991
quietly margins centerretire, atmeans asbalanced

myret
estimates save smokcenter

mata: st_global("e(cmd)", "margins") 


marginsplot,noci  xline(22,lpattern(dash)) xlab(none) xtitle(year centered on retirement) title(" Systolic BP") ///  
addplot(line sys2knot year2knot1,  xlab(none) xtitle(year centered on retirement) legend(order(1 "adjusted mean" 2 " predited piecewise trajectory"))

graph export mygraph.png

