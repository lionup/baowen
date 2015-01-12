cd ~/git/baowen/
use missingwide, clear


mi set flong
mi xtset,clear
set matsize 10000


gen xgender=gender*yrsinceretire1989
gen xarea=area*yrsinceretire1989

gen xjoint=jointretire*yrsinceretire1989
gen xchildcare=childcare*yrsinceretire1989


replace workspouse=3 if lastmarriage==1


mi register imputed education skills lastsmoke lastalcohol workspouse jointretire childcare xjoint xchildcare ///
logincome1989 logincome1991 logincome1993 logincome1997 ///
logincome2000 logincome2004 logincome2006 logincome2009 logincome2011 ///
bismoking1989 bismoking1991 bismoking1993 bismoking1997 ///
bismoking2000 bismoking2004 bismoking2006 bismoking2009 bismoking2011 ///
lastsysdrug lastdiadrug lastwaist lastbmi ///
energy1991 carbo1991 fat1991 protein1991 ///
energy1993 carbo1993 fat1993 protein1993 energy1997 carbo1997 fat1997 protein1997 ///
energy2000 carbo2000 fat2000 protein2000 energy2004 carbo2004 fat2004 protein2004 ///
energy2006 carbo2006 fat2006 protein2006 energy2009 carbo2009 fat2009 protein2009 ///
energy2011 carbo2011 fat2011 protein2011 ///
mettotal1997 mettotal2000 mettotal2004 mettotal2006 mettotal2009 mettotal2011 ///
alcohol1997 alcohol2000 alcohol2004 alcohol2006 alcohol2009 alcohol2011 ///
flag1989 flag1991 flag1993 flag1997 flag2000 flag2004 flag2006 flag2009 flag2011 



***************
mi impute chained ///
(ologit,iter(20))education skills lastalcohol ///
(logit if lastmarriage==0)workspouse ///
(logit,iter(20))childcare jointretire ///
(logit,iter(20))lastsmoke bismoking2004 bismoking2000 bismoking1997 ///
(regress) lastsysdrug lastdiadrug lastwaist lastbmi ///
(pmm) logincome1989 logincome1991 logincome1993 logincome1997 ///
logincome2000 logincome2004 logincome2006 logincome2009 logincome2011 ///
energy1991 carbo1991 fat1991 protein1991 ///
energy1993 carbo1993 fat1993 protein1993 energy1997 carbo1997 fat1997 protein1997 ///
energy2000 carbo2000 fat2000 protein2000 energy2004 carbo2004 fat2004 protein2004 ///
energy2006 carbo2006 fat2006 protein2006 energy2009 carbo2009 fat2009 protein2009 ///
energy2011 carbo2011 fat2011 protein2011 ///
mettotal1997 mettotal2000 mettotal2004 mettotal2006 mettotal2009 mettotal2011 ///
alcohol1997 alcohol2000 alcohol2004 alcohol2006 alcohol2009 alcohol2011 ///
=  gender retireageg  birthcohort area provinces communityid yrsinceretire1989 ///
prepost1989 prepost1991 prepost1993 prepost1997 ///
prepost2000 prepost2004 prepost2006 prepost2009 prepost2011 ///
xgender xarea  ///
,add(5) burnin(10) rseed(1389)augment 

saveold mied, replace
