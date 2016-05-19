mi set wide
mi xtset,clear
set matsize 10000


mi register imputed r1agey gender marriage education iscofamer4way hukou r1rural logperwealth logperincome r1cesd10 ///
r1diabe r1stroke r1hearte sbp dbp bmi wc logcrp newcho loghba1c smoking4way drinking r1wtrespb giveblood 


mi impute chained ///
(ologit) iscofamer4way smoking4way drinking ///
(logit) marriage hukou r1diabe r1stroke r1hearte ///
(regress) logperwealth logperincome sbp dbp wc  r1cesd10 bmi ///
(regress) logcrp newcho loghba1c /// 
= r1agey gender education r1rural xgender xrural [pweight=r1wtresp],add(45) burnin(20) rseed(1389)augment 




