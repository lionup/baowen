cd ~/git/baowen/hpc
set more 1
cap log close
log using log_hpc, text replace

use ../NSHD_employment_imputed_10.dta, clear

keep if notim==0

*Download this for dynhamming commands etc
*net from http://teaching.sociology.ul.ie/sadi/
*net install sadi,replace
*ssc install sq, replace
*ssc install moremata, replace

dynhamming state1-state13, pwdist(nshd_1)
*matrix list NCDS_1
clustermat wards nshd_1, add
*Calinski Harabasz pseudo- F index(large values) 
clustermat stop _clus_1, mat(nshd_1) var(state1-state13) groups(2/20) //
*DudaHart large Je(2)/Je(1),small t-square.  index(small values): 
clustermat stop _clus_1,  mat(nshd_1) var(state1-state13) groups(2/20) rule(duda) //

cluster gen statetype1=groups(7)
chronogram state1-state13, by(statetype1)prop xlabel(1 "14"  3 "16"  5 "18"  7 "20"  9 "22" 11 "24"  13 "26") xtitle ("Age")ytitle("%")legend(symysize(4)symxsize(6)col(3))
tab statetype1

cluster gen statetype2=groups(10)
chronogram state1-state13, by(statetype2)prop xlabel(1 "14"  3 "16"  5 "18"  7 "20"  9 "22" 11 "24"  13 "26") xtitle ("Age")ytitle("%")legend(symysize(4)symxsize(6)col(3))
tab statetype2

cluster gen statetype3=groups(6)
chronogram state1-state13, by(statetype3)prop xlabel(1 "14"  3 "16"  5 "18"  7 "20"  9 "22" 11 "24"  13 "26") xtitle ("Age")ytitle("%")legend(symysize(4)symxsize(6)col(3))
tab statetype3

cluster gen statetype4=groups(8)
chronogram state1-state13, by(statetype4)prop xlabel(1 "14"  3 "16"  5 "18"  7 "20"  9 "22" 11 "24"  13 "26") xtitle ("Age")ytitle("%")legend(symysize(4)symxsize(6)col(3))
tab statetype4

saveold newresult, replace
log close
