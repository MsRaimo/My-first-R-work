dat<-read.table("Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/Summative Results for R.csv", header=TRUE, sep=",")
attach(dat)
names(dat)



hist(Difference, breaks=25)
boxplot(Difference~Subject)

library(ggplot2)

p<-ggplot(dat, aes(x=Grade, y=Difference, fill=Subject))
p+geom_boxplot()+ggtitle("Spring to Spring Growth Distribution")+
  ylab("Spring RIT Median - U-46 Goal")

p<-ggplot(dat, aes(x=Program, y=Difference, fill=Subject))
p+geom_boxplot()+ggtitle("Spring to Spring Growth Distribution")+
  ylab("Spring RIT Median - U-46 Goal")

tapply(Difference, list(Program, Subject), length)

