mi set wide
mi xtset,clear
set matsize 10000


mi register imputed labor3way r1agey gender marriage education iscofamer4way hukou r1rural logwealth logincome r1cesd10 ///
r1diabe r1stroke r1hearte r1dyslipe sbp dbp bmi wc logcrp newcho loghba1c logtg smoking4way drinking r1wtrespb giveblood xgender xrural xspwork spwork ///
medtg medblood meddiab


mi impute chained ///
(ologit) iscofamer4way smoking4way drinking ///
(logit) marriage r1diabe r1stroke r1hearte r1dyslipe medtg medblood meddiab ///
(regress) logwealth logincome sbp dbp wc r1cesd10 bmi ///
(regress) logcrp newcho loghba1c logtg /// 
= r1agey gender education r1rural [pweight=r1wtresp],add(50) burnin(20) rseed(1389)augment 




