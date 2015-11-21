rm(list=ls())
setwd('~/git/baowen/')

library(mice)
library(multilevel)
library(glmmADMB)
library(ggplot2)
library(lme4)
library(pan)

load('pre.dat')
imputations <- mice(missingwide,meth=meth,pred = pred, maxit=20,m = 25,seed = 71152)
save(imputations,file='imputations.dat')
