rm(list=ls())
setwd('~/git/baowen/')

library(mice)
library(multilevel)
library(glmmADMB)
library(ggplot2)
library(lme4)

load("com.RData")

com$newid<-factor(com$newid)
com$newhhid<-factor(com$newhhid)
com$communityid<-factor(com$communityid)


pssbp <- glmmadmb(lastactivity~part1+part2+retireage+birthcohort+agewave+
                              lastbmi+lastalcohol+lastsmoking+
                              lastincome+
                              urban+provinces+education+skills+spstatus
                              +(1|communityid/newhhid/newid),data=com,
                              zeroInflation=TRUE,family="poisson")
   