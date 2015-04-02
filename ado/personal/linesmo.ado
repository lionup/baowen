program linesmo, eclass properties(mi)
version 12
xtmelogit bismoking re4m re5m gender  i.retireageg i.provinces  i.workspouse i.lastalcohol i.education i.skills lastincome i.stratum ///
birthcohort i.lastactivity if  basmoke==1& flag==1&yrsinceretire>=-17&yrsinceretire<=17&wave>=1991, pa vce(robust)
	
	margins,at (re4m=5 re5m=0) ///
	at(re4m=6 re5m=0) ///
	at(re4m=21 re5m=0) ///
	at(re4m=22 re5m=0) ///
	at(re4m=23 re5m=1) ///
	at(re4m=39 re5m=17) ///
	atmeans asbalanced post
end	
