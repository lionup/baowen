
cd ~/git/baowen/
use widemissing, clear

mi set flong
mi xtset,clear
set matsize 10000

mi register imputed education skills lastactivity lastsmoke lastalcohol workspouse  ///
perhhincome1991 perhhincome1993 perhhincome1997 ///
perhhincome2000 perhhincome2004 perhhincome2006 perhhincome2009 perhhincome2011 ///
bismoking1991 bismoking1993 bismoking1997 ///
bismoking2000 bismoking2004 bismoking2006 bismoking2009 bismoking2011 ///
lastsysdrug lastdiadrug lastwaist lastbmi ///
d3kcal1991 d3carbo1991 d3fat1991 d3protn1991 ///
d3kcal1993 d3carbo1993 d3fat1993 d3protn1993 d3kcal1997 d3carbo1997 d3fat1997 d3protn1997 ///
d3kcal2000 d3carbo2000 d3fat2000 d3protn2000 d3kcal2004 d3carbo2004 d3fat2004 d3protn2004 ///
d3kcal2006 d3carbo2006 d3fat2006 d3protn2006 d3kcal2009 d3carbo2009 d3fat2009 d3protn2009 ///
d3kcal2011 d3carbo2011 d3fat2011 d3protn2011 ///
alcohol1991 alcohol1993 alcohol1997 alcohol2000 alcohol2004 alcohol2006 alcohol2009 alcohol2011 


mi impute chained ///
(ologit,iter(20))education skills lastactivity ///
(logit,iter(20))lastsmoke bismoking2006 bismoking2009 bismoking2011 bismoking2004 bismoking2000 bismoking1997 ///
(logit if lastmarriage==0)workspouse ///
(regress) lastsysdrug lastdiadrug lastwaist lastbmi ///
(pmm)d3kcal1991 d3carbo1991 d3fat1991 d3protn1991 ///
d3kcal1993 d3carbo1993 d3fat1993 d3protn1993 d3kcal1997 d3carbo1997 d3fat1997 d3protn1997 ///
d3kcal2000 d3carbo2000 d3fat2000 d3protn2000 d3kcal2004 d3carbo2004 d3fat2004 d3protn2004 ///
d3kcal2006 d3carbo2006 d3fat2006 d3protn2006 d3kcal2009 d3carbo2009 d3fat2009 d3protn2009 ///
d3kcal2011 d3carbo2011 d3fat2011 d3protn2011 /// 
alcohol1993 alcohol1997 alcohol2000 alcohol2004 alcohol2006 alcohol2009 alcohol2011 ///
=  gender restopage birthcohort urban provinces commid since1991sq yearsince1991 ///
prepost1991 prepost1993 prepost1997 lastmarriage ///
prepost2000 prepost2004 prepost2006 prepost2009 ///
xgender xurban  ///
,add(20) burnin(100) rseed(1389)augment

saveold mied, replace







