cd ~/git/baowen/hpc5
set more 1
cap log close
log using log_hpc5, text replace

use ../imputed.dta, clear

***************retired
*mi stset age_exitnew, failure(exit_type==3) enter(xage_q)exit (age_exitnew=75)
*model 1:
*xi: mi estimate: stcrreg ftow i.xage_qgp i.gender, compete(exit_type ==2 4 5 6)
*xi: mi estimate: stcrreg wtof i.xage_qgp i.gender, compete(exit_type ==2 4 5 6)
*mode1 2:
*xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse , compete(exit_type ==2 4 5 6)
*xi: mi estimate: stcrreg wtof i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse, compete(exit_type ==2 4 5 6)
*model 3:
*xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse i.xdeclatt i.xjobdemt i.support, compete(exit_type ==2 4 5 6)
*xi: mi estimate: stcrreg wtof i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse i.xdeclatt i.xjobdemt i.support, compete(exit_type ==2 4 5 6)

***************unemployed
*mi stset age_exitnew, failure(exit_type==4) enter(xage_q)exit (age_exitnew=75)
*model 1:
*xi: mi estimate: stcrreg ftow i.xage_qgp i.gender, compete(exit_type ==2 3 5 6)
*xi: mi estimate: stcrreg wtof i.xage_qgp i.gender, compete(exit_type ==2 3 5 6)

*mode1 2:
*xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse , compete(exit_type ==2 3 5 6)
*xi: mi estimate: stcrreg wtof i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse, compete(exit_type ==2 3 5 6)
*model 3:
*xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse i.xdeclatt i.xjobdemt i.support, compete(exit_type ==2 3 5 6)
*xi: mi estimate: stcrreg wtof i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse i.xdeclatt i.xjobdemt i.support, compete(exit_type ==2 3 5 6)

***************health reason
mi stset age_exitnew, failure(exit_type==5) enter(xage_q)exit (age_exitnew=75)
*model 1:
*xi: mi estimate: stcrreg ftow i.xage_qgp i.gender, compete(exit_type ==2 3 4 6)
*xi: mi estimate: stcrreg wtof i.xage_qgp i.gender, compete(exit_type ==2 3 4 6)
*mode1 2:
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse , compete(exit_type ==2 3 4 6)
*xi: mi estimate: stcrreg wtof i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse, compete(exit_type ==2 3 4 6)
*model 3:
*xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse i.xdeclatt i.xjobdemt i.support, compete(exit_type ==2 3 4 6)
*xi: mi estimate: stcrreg wtof i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse i.xdeclatt i.xjobdemt i.support, compete(exit_type ==2 3 4 6)


***************other
*mi stset age_exitnew, failure(exit_type==6) enter(xage_q)exit (age_exitnew=75)
*model 1:
*xi: mi estimate: stcrreg ftow i.xage_qgp i.gender, compete(exit_type ==2 3 4 5)
*xi: mi estimate: stcrreg wtof i.xage_qgp i.gender, compete(exit_type ==2 3 4 5)
*mode1 2:
*xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse , compete(exit_type ==2 3 4 5)
*xi: mi estimate: stcrreg wtof i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse, compete(exit_type ==2 3 4 5)
*model 3:
*xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse i.xdeclatt i.xjobdemt i.support, compete(exit_type ==2 3 4 5)
*xi: mi estimate: stcrreg wtof i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse i.xdeclatt i.xjobdemt i.support, compete(exit_type ==2 3 4 5)


saveold newresult, replace
log close
