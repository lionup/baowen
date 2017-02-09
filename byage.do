
************retire <60, FIW
mi stset age_exitnew, failure(retiretime==1) enter(xage_q)exit (age_exitnew=75)
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender, compete(retiretime==2 3)
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse, compete(retiretime==2 3)

************retire <60, WIF
mi stset age_exitnew, failure(retiretime==1) enter(xage_q)exit (age_exitnew=75)
xi: mi estimate:stcrreg wtof i.xage_qgp i.gender, compete(retiretime==2 3)
xi: mi estimate:stcrreg wtof i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse, compete(retiretime==2 3)

******************retire>60, FIW
mi stset age_exitnew, failure(retiretime==2) enter(xage_q)exit (age_exitnew=75)
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender, compete(retiretime==1 3)
xi: mi estimate: stcrreg ftow i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse, compete(retiretime==1 3)

******************retire>60, FIW
mi stset age_exitnew, failure(retiretime==2) enter(xage_q)exit (age_exitnew=75)
xi: mi estimate: stcrreg wtof i.xage_qgp i.gender, compete(retiretime==1 3)
xi: mi estimate: stcrreg wtof i.xage_qgp i.gender i.tedlev i.xrgrlump i.depress i.chronic i.spouse, compete(retiretime==1 3)
