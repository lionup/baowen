mi set wide
mi xtset,clear
set matsize 10000


mi register imputed ecpos3g r6agey gender spwork education iscoskill village logwealth logincome r6cesd ///
r6diabe r6stroke r6hearte dyslipe sbp dbp r6bmi wc logcrp chol loghba1c logtg  smoking4way drinking r6cwtresp giveblood xgender xrural xspwork ///
medblood meddia medcho

mi impute chained ///
(ologit)iscoskill smoking4way drinking education ///
(logit) dyslipe medcho medblood meddia village ///
(ologit)spwork ///
(regress) logwealth logincome sbp dbp wc r6cesd r6bmi ///
(regress) logcrp chol loghba1c logtg /// 
= r6agey gender r6stroke r6hearte r6diabe  [pweight=r6cwtresp],add(50) burnin(20) rseed(1389)augment 
