program mimarginsmo, eclass properties(mi)
version 12
xtlogit bismoking i.centerretire gender urban i.retireageg i.provinces i.workspouse ///
i.lastalcohol i.education i.skills lastincome birthcohort ///
if flag==1&yrsinceretire>=-17&yrsinceretire<=17&wave>=1991
	margins i.centerretire, atmeans asbalanced post  
end
