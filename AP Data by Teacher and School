rm(list=ls())
roster<-read.csv() #Data with repeated students for each AP course and teacher
scores<-read.csv() #Long Data with each AP Score a separate line
library("tidyr")
library("dplyr")
s.scores<-spread(scores,Test.Short.Name,Test.Score.Value)
merged<-merge(roster,s.scores,all.x=T)
fix(merged) #Make sure first 6 characters of Test name match first 6 characters of courses
tests<-names(merged) 
fix(tests) #Remove non test variables
levels(merged$Annual.Annual.School)<-gsub(" HIGH SCHOOL","",levels(merged$Annual.Annual.School))

rnd.mean<-function(x){round(mean(x, na.rm=T),2)}


####Counts####
for (i in tests) {
  merged$match<-ifelse(substr(merged$Schedule.Source.Course.Name,1,6)==substr(i,1,6),1,0)
  filtered<-filter(merged,match==1)
  filtered<-subset(filtered,!is.na(filtered[i]))
  filtered$Staff.Name<-factor(filtered$Staff.Name)
  filtered$Annual.Annual.School<-factor(filtered$Annual.Annual.School)
  attach(filtered)
  t<-table(Staff.Name,Annual.Annual.School)
  detach(filtered)
  x<-paste0("file path",i,".csv")
  write.csv(t, file=x)
}




####Graphs for each Teacher####

library("ggplot2")
for (i in tests) {
  merged$match<-ifelse(substr(merged$Schedule.Source.Course.Name,1,6)==substr(i,1,6),1,0)
  filtered<-filter(merged,match==1)
  filtered<-subset(filtered,!is.na(filtered[i]))
  filtered$Staff.Name<-factor(filtered$Staff.Name)
  filtered$Annual.Annual.School<-factor(filtered$Annual.Annual.School)
  for (j in filtered$Staff.Name){
    sub<-filtered[filtered$Staff.Name==j,]
    sub$Annual.Annual.School<-factor(sub$Annual.Annual.School)
  attach(sub)
  if(all(is.na(get(i)))==FALSE){
  graph<- ggplot(sub,aes(x=factor(get(i)),fill="white"))+
      stat_bin(binwidth=1)+
      stat_bin(binwidth=1, geom="text",aes(label=..count..), vjust=1.25)+
      ggtitle(paste(levels(sub$Annual.Annual.School),j,i))+
      theme(axis.text.x=element_text(colour="black",size=15),
            axis.text.y=element_text(colour="black",size=15),
            axis.title.y=element_text(size=15),
            axis.title.x=element_text(size=15))+
      guides(fill=F)+
      labs(x=paste("Mean=",round(colMeans(sub[i]),digits=2),"Total n=",nrow(sub)))
    
  x<-paste0("Z:/admdata/DATA/AssessmentData/2014-2015 CSIp/AP/By Teacher/graphs/",i," ",j,".pdf")
  pdf(x)
plot(graph)
  dev.off()
  }
  detach(sub)
  }}




####Create PDFs comparing Schools and Avg Teacher Score ####
library("gplots")

for (i in tests) {
merged$match<-ifelse(substr(merged$Schedule.Source.Course.Name,1,6)==substr(i,1,6),1,0)
filtered<-filter(merged,match==1)
filtered<-subset(filtered,!is.na(filtered[i]))
filtered$Staff.Name<-factor(filtered$Staff.Name)
filtered$Annual.Annual.School<-factor(filtered$Annual.Annual.School)
attach(filtered)
t<-tapply(get(i),list(Staff.Name,Annual.Annual.School),rnd.mean)

if(all(is.na(get(i)))==FALSE){
  graph<-ggplot(filtered,aes(x=factor(get(i)),fill=Annual.Annual.School))+
    stat_bin(binwidth=1)+
    stat_bin(binwidth=1, geom="text",aes(label=..count..), vjust=1.25)+
    ggtitle(i)+
    theme(axis.text.x=element_text(colour="black",size=10),
          axis.text.y=element_text(colour="black",size=10),
          axis.title.y=element_text(size=15),
          axis.title.x=NULL)+
    guides(fill=F)+
    facet_grid(Annual.Annual.School~.)+
    labs(x=NULL)
  
  x<-paste0("File Path",i,".pdf")
  pdf(x)
  plot(graph)
  textplot(t,cmar=1)
  title(paste(i,"Mean Score by Teacher"))
  dev.off()
}
detach(filtered)
}







