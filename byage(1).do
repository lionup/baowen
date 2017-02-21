
gen reage_exit=age_exitnew
replace reage_exit=60 if reage_exit<60&retire60==1
/*
**************************all reason, FIW, early, model 1: 
mi stset reage_exit, failure(outwork==1) enter(xage_q)exit(reage_exit==59.999) 
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender, compete(exit_type ==2)
**************************all reason, FIW, early, model 2: 
mi stset reage_exit, failure(outwork==1) enter(xage_q)exit(reage_exit==59.999) 
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse, compete(exit_type ==2)
*/
**************************all reason, FIW, not early, model 1: 
mi stset reage_exit, failure(outwork==1) enter(reage_exit==60)exit(reage_exit==75) 
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender, compete(exit_type ==2)

**************************all reason, FIW, not early, model 2: 
mi stset reage_exit, failure(outwork==1) enter(reage_exit==60)exit(reage_exit==75) 
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse, compete(exit_type ==2)


**************************all reason, WIF, early, model 1: 
mi stset reage_exit, failure(outwork==1) enter(xage_q)exit(reage_exit==59.999) 
xi: mi estimate: stcrreg wtof i.xage_qgp i.gender, compete(exit_type ==2)
**************************all reason, WIF, early, model 2: 
mi stset reage_exit, failure(outwork==1) enter(xage_q)exit(reage_exit==59.999) 
xi: mi estimate: stcrreg wtof i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse, compete(exit_type ==2)

**************************all reason, WIF, not early, model 1: 
mi stset reage_exit, failure(outwork==1) enter(reage_exit==60)exit(reage_exit==75) 
xi: mi estimate: stcrreg wtof i.xage_qgp i.gender, compete(exit_type ==2)

**************************all reason, WIF, not early, model 2: 
mi stset reage_exit, failure(outwork==1) enter(reage_exit==60)exit(reage_exit==75) 
xi: mi estimate: stcrreg wtof i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse, compete(exit_type ==2)