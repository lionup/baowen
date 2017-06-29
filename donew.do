gen ageenter=agexp
mi stset age_exitB,enter(ageenter) failure(fail=1)
*/*model 1: 
mi estimate,hr:stcrreg lastftow agexp if sex==1& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
mi estimate,hr:stcrreg lastftow agexp if sex==2& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
mi estimate,hr:stcrreg lastwtof agexp if sex==1& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
mi estimate,hr:stcrreg lastwtof agexp if sex==2& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)

*model 2

mi estimate,hr:stcrreg lastftow agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic if sex==1& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
mi estimate,hr:stcrreg lastftow agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic if sex==2& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
mi estimate,hr:stcrreg lastwtof agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic if sex==1& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
mi estimate,hr:stcrreg lastwtof agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic if sex==2& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
*/

*model 3

mi estimate,hr:stcrreg lastftow agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic i.lastjobdemt i.lastdeclatt i.lastjobsupp if sex==1& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
mi estimate,hr:stcrreg lastftow agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic i.lastjobdemt i.lastdeclatt i.lastjobsupp  if sex==2& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
mi estimate,hr:stcrreg lastwtof agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic i.lastjobdemt i.lastdeclatt i.lastjobsupp  if sex==1& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
mi estimate,hr:stcrreg lastwtof agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic i.lastjobdemt i.lastdeclatt i.lastjobsupp  if sex==2& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)

*model 4

mi estimate,hr:stcrreg lastftow agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic i.lastnchild i.lastconthm i.lastcarer if sex==1& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
mi estimate,hr:stcrreg lastftow agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic i.lastnchild i.lastconthm i.lastcarer if sex==2& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
mi estimate,hr:stcrreg lastwtof agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic i.lastnchild i.lastconthm i.lastcarer if sex==1& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
mi estimate,hr:stcrreg lastwtof agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic i.lastnchild i.lastconthm i.lastcarer if sex==2& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)


*model 5

mi estimate,hr:stcrreg lastftow agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic i.lastnchild i.lastconthm i.lastcarer i.lastjobdemt i.lastdeclatt i.lastjobsupp if sex==1& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
mi estimate,hr:stcrreg lastftow agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic i.lastnchild i.lastconthm i.lastcarer i.lastjobdemt i.lastdeclatt i.lastjobsupp if sex==2& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
mi estimate,hr:stcrreg lastwtof agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic i.lastnchild i.lastconthm i.lastcarer i.lastjobdemt i.lastdeclatt i.lastjobsupp if sex==1& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)
mi estimate,hr:stcrreg lastwtof agexp i.tedlev i.lastgrade i.lastdepress i.lastworksp i.lastchronic i.lastnchild i.lastconthm i.lastcarer i.lastjobdemt i.lastdeclatt i.lastjobsupp if sex==2& drop1!=1&drop2!=1&drop3!=1&drop4!=1, compete(exit_typeL==2)

*
