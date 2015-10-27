rm(list=ls())
setwd('~/git/baowen/')
library(mice)

load('pre.dat')
imputations <- mice(mdf,pred = pred,maxit = 20, m = 35,seed = 71152)
save(imputations,file='imputations.dat')
