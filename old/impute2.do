cd ~/git/baowen/

use missingwide, clear

mi set flong
mi xtset,clear
set matsize 10000

gen intergender=gender*yrsinceretire1989
gen interarea=area*yrsinceretire1989
gen since1989sq=yrsinceretire1989^2

mi register imputed education skills  lastsmoke lastalcohol workspouse ///
logincomemedi1989  logincomemedi1991 logincomemedi1993  logincomemedi1997 ///
logincomemedi2000  logincomemedi2004 logincomemedi2006 logincomemedi2009  logincomemedi2011 ///
lastsysdrug lastdiadrug lastwaist lastbmi ///
energy1991 carbo1991 fat1991 protein1991 ///
energy1993 carbo1993 fat1993 protein1993 energy1997 carbo1997 fat1997 protein1997 ///
energy2000 carbo2000 fat2000 protein2000 energy2004 carbo2004 fat2004 protein2004 ///
energy2006 carbo2006 fat2006 protein2006 energy2009 carbo2009 fat2009 protein2009 ///
energy2011 carbo2011 fat2011 protein2011 ///
metstotal1997 metstotal2000 metstotal2004 metstotal2006 metstotal2009 metstotal2011 


recode lastsmoke (2=1)
replace workspouse=3 if lastmarriage==1
mi impute chained ///
(ologit,iter(20)) education skills lastalcohol lastsmoke ///
(logit if lastmarriage==0)workspouse ///
(regress) logincomemedi1989 logincomemedi1991 logincomemedi1993 logincomemedi1997 ///
logincomemedi2000 logincomemedi2004 logincomemedi2006 logincomemedi2009 logincomemedi2011 ///
lastsysdrug lastdiadrug lastwaist lastbmi ///
energy1991 carbo1991 fat1991 protein1991 ///
energy1993 carbo1993 fat1993 protein1993 energy1997 carbo1997 fat1997 protein1997 ///
energy2000 carbo2000 fat2000 protein2000 energy2004 carbo2004 fat2004 protein2004 ///
energy2006 carbo2006 fat2006 protein2006 energy2009 carbo2009 fat2009 protein2009 ///
energy2011 carbo2011 fat2011 protein2011 ///
metstotal1997 metstotal2000 metstotal2004 metstotal2006 metstotal2009 metstotal2011 ///
= gender retireageg lastmarriage birthcohort area provinces communityid yrsinceretire1989 since1989sq intergender interarea  ///
,add(10) rseed(1389)augment

saveold mied, replace
