program mimarginsmo, eclass properties(mi)
version 12
xtlogit bismoking i.centerretire gender i.retireageg i.provinces  i.workspouse i.lastalcohol i.education i.skills lastincome i.stratum ///
birthcohort i.lastactivity if  basmoke==1& flag==1&yrsinceretire>=-17&yrsinceretire<=17&wave>=1991
	margins i.centerretire, atmeans asbalanced post  
end
