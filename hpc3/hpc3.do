cd ~/git/baowen/hpc
set more 1
cap log close
log using log_hpc, text replace

use ../statacompleteh, clear

rm(list=ls())
setwd('~/git/baowen/')
library(mice)
library(pan)
load('pre.dat')
imputations <- mice(missingwide,meth=meth,pred = pred, maxit=20,m = 25,seed = 71152)
save(imputations,file='imputationssmk.dat')
saveold newresult, replace
log close
