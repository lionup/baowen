cd ~/git/baowen/
use statacomplete, clear

xi:mim,cat(fit):gllamm smokingatwave part1 part2 gender lastbmi retireage i.provinces i.spstatus i.lastalcogrp i.education i.skills lastincome index ///
age1991 i.lastactivity, i(idind hhid commid) link(mlogit) family(binom) trace
