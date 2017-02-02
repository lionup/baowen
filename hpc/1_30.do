
use "C:\Users\rmjlbxu\OneDrive\conflict2\imputed.dta", clear

***************retired 
mi stset age_exitnew, failure(exit_type==3) enter(xage_q)exit (age_exitnew=75)
*model 1: 
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender, compete(exit_type ==2 4 5 6)
xi: mi estimate: stcrreg wtof i.xage_qgp i.gender, compete(exit_type ==2 4 5 6)
*mode1 2:
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse , compete(exit_type ==2 4 5 6)
xi: mi estimate: stcrreg wtof i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse, compete(exit_type ==2 4 5 6)
*model 3:
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse i.xdeclatt i.xjobdemt i.support, compete(exit_type ==2 4 5 6)
xi: mi estimate: stcrreg wtof i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse i.xdeclatt i.xjobdemt i.support, compete(exit_type ==2 4 5 6)

***************unemployed
mi stset age_exitnew, failure(exit_type==4) enter(xage_q)exit (age_exitnew=75)
*model 1: 
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender, compete(exit_type ==2 3 5 6)
xi: mi estimate: stcrreg wtof i.xage_qgp i.gender, compete(exit_type ==2 3 5 6)
*mode1 2:
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse , compete(exit_type ==2 3 5 6)
xi: mi estimate: stcrreg wtof i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse, compete(exit_type ==2 3 5 6)
*model 3:
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse i.xdeclatt i.xjobdemt i.support, compete(exit_type ==2 3 5 6)
xi: mi estimate: stcrreg wtof i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse i.xdeclatt i.xjobdemt i.support, compete(exit_type ==2 3 5 6)

***************health reason
mi stset age_exitnew, failure(exit_type==5) enter(xage_q)exit (age_exitnew=75)
*model 1: 
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender, compete(exit_type ==2 3 4 6)
xi: mi estimate: stcrreg wtof i.xage_qgp i.gender, compete(exit_type ==2 3 4 6)
*mode1 2:
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse , compete(exit_type ==2 3 4 6)
xi: mi estimate: stcrreg wtof i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse, compete(exit_type ==2 3 4 6)
*model 3:
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse i.xdeclatt i.xjobdemt i.support, compete(exit_type ==2 3 4 6)
xi: mi estimate: stcrreg wtof i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse i.xdeclatt i.xjobdemt i.support, compete(exit_type ==2 3 4 6)

***************other
mi stset age_exitnew, failure(exit_type==6) enter(xage_q)exit (age_exitnew=75)
*model 1: 
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender, compete(exit_type ==2 3 4 5)
xi: mi estimate: stcrreg wtof i.xage_qgp i.gender, compete(exit_type ==2 3 4 5)
*mode1 2:
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse , compete(exit_type ==2 3 4 5)
xi: mi estimate: stcrreg wtof i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse, compete(exit_type ==2 3 4 5)
*model 3:
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse i.xdeclatt i.xjobdemt i.support, compete(exit_type ==2 3 4 5)
xi: mi estimate: stcrreg wtof i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse i.xdeclatt i.xjobdemt i.support, compete(exit_type ==2 3 4 5)














*mi estimate:stcrreg i.threeftow i.xage_qgp i.gender, compete(exit_type == 4 5 6)
*mi estimate:stcurve, cif at1(threeftow = 0 ) at2(threeftow  = 1) at3(threeftow  = 2 )legend(order(1 "Lowest conflict" 2 "Middle conflict"  3 "Highest conflict")) ///
*lpattern(solid longdash shortdash) color(black black black)title("Retired(not health reason)")
