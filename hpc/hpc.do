cd ~/git/baowen/hpc
set more 1
cap log close
log using log_hpc, text replace


use ../usinglong_MI.dta, clear

keep if oddwave==1& anasample==1&part==1
mi set  mlong
mi xtset,clear
set matsize 10000


mi register imputed sex birth stopage edlev lastgrade lastspwor esmoke alcohol sbp dbp bmi blchol everchd everstroke evermi evercancer everdiabe ///
pcs ghqgp age reasonstop labstatnew dead wave yeartostop ah4 mem mh swords animals part1 part2 ah4mi memmi mhmi swordsmi animalsmi inter1 inter2


mi impute chained ///
(regress) sbp dbp bmi pcs ///
(mlogit) lastspwor ///
(ologit) edlev alcohol esmoke ///
(logit) ghqgp ///
(pmm, knn(5))blchol ah4mi memmi mhmi swordsmi animalsmi=sex birth stopage lastgrade everchd everstroke evermi evercancer everdiabe ///
age reasonstop dead wave yeartostop part1 part2 inter1 inter2,add(30)burnin(20) rseed(1389)augment


saveold newresult, replace
log close
