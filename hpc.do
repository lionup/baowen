cd ~/git/baowen/
use statacomplete, clear

mi estimate: xtmixed sysdrug i.posiyearcenter gender lastbmi retireage i.provinces i.spstatus i.lastalcogrp i.lastsmoking i.education i.skills lastincome index i.anti ///
age1991 i.lastactivity if yearcenter<=17&yearcenter>=-17 || commid:|| hhid:|| idind:, mle var

saveold newresult, replace
