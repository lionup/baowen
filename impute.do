cd ~/git/baowen/

log using log_mi, text replace

use missingwide, clear
mi set flong
mi xtset,clear

mi register imputed education skills spouse ///
smoking1989 alcoholgroup1989 logincomemedi1989 smoking1991 alcoholgroup1991 logincomemedi1991 ///
smoking1993 alcoholgroup1993 logincomemedi1993 smoking1997 alcoholgroup1997 logincomemedi1997 ///
smoking2000 alcoholgroup2000 logincomemedi2000 smoking2004 alcoholgroup2004 logincomemedi2004 ///
smoking2006 alcoholgroup2006 logincomemedi2006 smoking2009 alcoholgroup2009 logincomemedi2009 ///
smoking2011 alcoholgroup2011 logincomemedi2011 ///
waist1991 bmi1991 sysdrug1991 diadrug1991 ///
waist1993 bmi1993 sysdrug1993 diadrug1993 ///
waist1997 bmi1997 sysdrug1997 diadrug1997 ///
waist2000 bmi2000 sysdrug2000 diadrug2000 ///
waist2004 bmi2004 sysdrug2004 diadrug2004 ///
waist2006 bmi2006 sysdrug2006 diadrug2006 ///
waist2009 bmi2009 sysdrug2009 diadrug2009 ///
waist2011 bmi2011 sysdrug2011 diadrug2011 ///
energy1991 carbo1991 fat1991 protein1991 ///
energy1993 carbo1993 fat1993 protein1993 energy1997 carbo1997 fat1997 protein1997 ///
energy2000 carbo2000 fat2000 protein2000 energy2004 carbo2004 fat2004 protein2004 ///
energy2006 carbo2006 fat2006 protein2006 energy2009 carbo2009 fat2009 protein2009 ///
energy2011 carbo2011 fat2011 protein2011 ///
metstotal1997 metstotal2000 metstotal2004 metstotal2006 metstotal2009 metstotal2011 


 mi impute chained ///
(mlogit, augment)spouse ///
(ologit) education skills ///
(regress) logincomemedi1989 logincomemedi1991 logincomemedi1993 logincomemedi1997 ///
logincomemedi2000 logincomemedi2004 logincomemedi2006 logincomemedi2009 logincomemedi2011 ///
waist1991 bmi1991 sysdrug1991 diadrug1991 ///
waist1993 bmi1993 sysdrug1993 diadrug1993 ///
waist1997 bmi1997 sysdrug1997 diadrug1997 ///
waist2000 bmi2000 sysdrug2000 diadrug2000 ///
waist2004 bmi2004 sysdrug2004 diadrug2004 ///
waist2006 bmi2006 sysdrug2006 diadrug2006 ///
waist2009 bmi2009 sysdrug2009 diadrug2009 ///
waist2011 bmi2011 sysdrug2011 diadrug2011 ///
energy1991 carbo1991 fat1991 protein1991 ///
energy1993 carbo1993 fat1993 protein1993 energy1997 carbo1997 fat1997 protein1997 ///
energy2000 carbo2000 fat2000 protein2000 energy2004 carbo2004 fat2004 protein2004 ///
energy2006 carbo2006 fat2006 protein2006 energy2009 carbo2009 fat2009 protein2009 ///
energy2011 carbo2011 fat2011 protein2011 ///
metstotal1997 metstotal2000 metstotal2004 metstotal2006 metstotal2009 metstotal2011 ///
= gender retireageg birthcohort area provinces communityid ///
yrsinceretire1989 yrsinceretire1991 yrsinceretire1993 yrsinceretire1997 ///
yrsinceretire2000 yrsinceretire2004 yrsinceretire2006 yrsinceretire2009 yrsinceretire2011 ///
,add(5) burn(10) rseed(1389) 

log close
