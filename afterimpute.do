
use "C:\Users\rmjlbxu\OneDrive\conflict2\imputed_march.dta", clear
sort idout_107 wave
by idout_107: gen time2=agevar-diff+1
save "C:\Users\rmjlbxu\OneDrive\conflict2\imputed_march.dta", replace



**************************all reason
mi stset time2, id(id) failure(fail==1) exit(allexit==1)
*model 1: 
mi estimate,hr: stcrreg lastftow ageenter if gender==0&notuse!=1, compete(exit_typeLvar ==2)
mi estimate,hr: stcrreg lastftow ageenter if gender==1&notuse!=1, compete(exit_typeLvar ==2)
mi estimate,hr: stcrreg lastwtof ageenter if gender==0&notuse!=1, compete(exit_typeLvar ==2)
mi estimate,hr: stcrreg lastwtof ageenter if gender==1&notuse!=1, compete(exit_typeLvar ==2)
*model 2;
mi estimate,hr: stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic if gender==0&notuse!=1, compete(exit_typeLvar ==2)
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic if gender==1&notuse!=1, compete(exit_typeLvar ==2)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic if gender==0&notuse!=1, compete(exit_typeLvar ==2)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic if gender==1&notuse!=1, compete(exit_typeLvar ==2)


*model 3
mi estimate,hr: stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp if gender==0&notuse!=1, compete(exit_typeLvar ==2)
mi estimate,hr: stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp if gender==1&notuse!=1, compete(exit_typeLvar ==2)
mi estimate,hr: stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp if gender==0&notuse!=1, compete(exit_typeLvar ==2)
mi estimate,hr: stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp if gender==1&notuse!=1, compete(exit_typeLvar ==2)

*model 4
mi estimate,hr: stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==0&notuse!=1, compete(exit_typeLvar ==2)
mi estimate,hr: stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==1&notuse!=1, compete(exit_typeLvar ==2)
mi estimate,hr: stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==0&notuse!=1, compete(exit_typeLvar ==2)
mi estimate,hr: stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==1&notuse!=1, compete(exit_typeLvar ==2)

 
*************************** retire
mi stset time2, id(id) failure(exit_typeLvar==3) exit(allexit==1)

*model 1: 
mi estimate,hr:stcrreg lastftow ageenter if gender==0&notuse!=1, compete(exit_typeLvar ==2 4 5 6)
mi estimate,hr:stcrreg lastftow ageenter if gender==1&notuse!=1, compete(exit_typeLvar ==2 4 5 6)
mi estimate,hr:stcrreg lastwtof ageenter if gender==0&notuse!=1, compete(exit_typeLvar ==2 4 5 6)
mi estimate,hr:stcrreg lastwtof ageenter if gender==1&notuse!=1, compete(exit_typeLvar ==2 4 5 6)

*model 2;
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic if gender==0&notuse!=1, compete(exit_typeLvar ==2 4 5 6)
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic if gender==1&notuse!=1, compete(exit_typeLvar ==2 4 5 6)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic if gender==0&notuse!=1, compete(exit_typeLvar ==2 4 5 6)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic if gender==1&notuse!=1, compete(exit_typeLvar ==2 4 5 6)


*model 3
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp if gender==0&notuse!=1, compete(exit_typeLvar ==2 4 5 6)
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp if gender==1&notuse!=1, compete(exit_typeLvar ==2 4 5 6)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp if gender==0&notuse!=1, compete(exit_typeLvar ==2 4 5 6)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp if gender==1&notuse!=1, compete(exit_typeLvar ==2 4 5 6)


*model 4
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==0&notuse!=1, compete(exit_typeLvar ==2 4 5 6)
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==1&notuse!=1, compete(exit_typeLvar ==2 4 5 6)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==0&notuse!=1, compete(exit_typeLvar ==2 4 5 6)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==1&notuse!=1, compete(exit_typeLvar ==2 4 5 6)


**********************Health related

mi stset time2, id(id) failure(exit_typeLvar==5) exit(allexit==1)

*model 1: 
mi estimate,hr:stcrreg lastftow ageenter if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 4 6)
mi estimate,hr:stcrreg lastftow ageenter if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 4 6)
mi estimate,hr:stcrreg lastwtof ageenter if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 4 6)
mi estimate,hr:stcrreg lastwtof ageenter if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 4 6)


*model 2a,without adjusting chronic
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 4 6)
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 4 6)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 4 6)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 4 6)


*model 2b;
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 4 6)
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 4 6)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 4 6)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 4 6)


*model 3
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 4 6)
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 4 6)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 4 6)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 4 6)


*model 4
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 4 6)
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 4 6)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 4 6)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 4 6)



***************************Other
mi stset time2, id(id) failure(exit_typeLvar==6) exit(allexit==1)

*model 1: 
mi estimate,hr:stcrreg lastftow ageenter if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 4 5)
mi estimate,hr:stcrreg lastftow ageenter if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 4 5)
mi estimate,hr:stcrreg lastwtof ageenter if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 4 5)
mi estimate,hr:stcrreg lastwtof ageenter if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 4 5)


*model 2;
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 4 5)
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 4 5)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 4 5)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 4 5)


*model 3
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 4 5)
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 4 5)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 4 5)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 4 5)


*model 4
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 4 5)
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 4 5)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 4 5)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 4 5)

****************************unemployment

mi stset time2, id(id) failure(exit_typeLvar==4) exit(allexit==1)

*model 1: 
mi estimate,hr:stcrreg lastftow ageenter if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 5 6)
mi estimate,hr:stcrreg lastftow ageenter if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 5 6)
mi estimate,hr:stcrreg lastwtof ageenter if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 5 6)
mi estimate,hr:stcrreg lastwtof ageenter if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 5 6)

*model 2;
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 5 6)
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 5 6)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 5 6)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 5 6)


*model 3
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 5 6)
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 5 6)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 5 6)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 5 6)


*model 4
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 5 6)
mi estimate,hr:stcrreg lastftow ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 5 6)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==0&notuse!=1, compete(exit_typeLvar ==2 3 5 6)
mi estimate,hr:stcrreg lastwtof ageenter i.education i.lastgrade i.lastdepress i.lastwsp i.chronic i.lastjobdemt i.lastdeclatt i.lastsupp i.lastcarer i.lastnumchild i.biconhm if gender==1&notuse!=1, compete(exit_typeLvar ==2 3 5 6)
