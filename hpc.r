rm(list=ls())
setwd('~/git/baowen/')

library(mice)
library(multilevel)
library(glmmADMB)
library(ggplot2)
library(lme4)

load("com.RData")

str(com)
com$newid<-factor(com$newid)
com$newhhid<-factor(com$newhhid)
com$communityid<-factor(com$communityid)

com$lastalcohol<-factor(com$lastalcohol)
com$lastsmoking<-factor(com$lastsmoking)

com$skills<-factor(com$skills)
com$lastactivity <-factor(com$lastactivity )
com$anti<-factor(com$anti)
com$urban<-factor(com$urban)
com$education<-factor(com$education)

############################mixed regressions
back<-as.mids(com)
is.mids(back)

comsbp <- pool(with (back,lmer(sbp ~ part1+part2+retireage+birthcohort+agewave+
                                  lastbmi+lastalcohol+lastsmoking+
                                  lastincome+lastactivity+
                                  urban+provinces+education+skills+spstatus+
                                (1|communityid/newhhid/newid))))
