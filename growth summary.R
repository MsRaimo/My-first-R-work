
dat <- read.csv("Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/growth summary for R.csv")
names(dat)
attach(dat)
boxplot(score~admin+year, data=dat[Subject=="Math",], las=2,
         main="Typical Growth on MATH MAP", fill=admin)

boxplot(score~admin+year, data=dat[Subject=="Reading",], las=2,
         main="Typical Growth on READING MAP")

library(ggplot2)
p<-ggplot(dat[Subject=="Reading",], aes(y=score, x=as.factor(year), fill=admin))
p+geom_boxplot() +labs(x="Year", y="Percent Typical Growth")+ggtitle("READING")

p<-ggplot(dat[Subject=="Math",], aes(y=score, x=as.factor(year), fill=admin))
p+geom_boxplot() +labs(x="Year", y="Percent Typical Growth")+ggtitle("MATH")


plot(score[dat$admin=="Spring to Winter" &year=="2013"],
     score[dat$admin=="Spring to Spring" &year=="2013"],
     xlab="Spring to Winter % Typical Growth",
     ylab="Spring to Spring % Typical Growth",
     main="2013 Correlation")
