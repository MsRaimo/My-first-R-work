
//////////////////////////////////////////////////////////////////////////////
  ///  								            ///
  ///     Spring & SPring Medians - READING Grades 7-8 for Templates         ///
  ///                  School, Grade, Department, Course                           ///
  ///									   ///
  //////////////////////////////////////////////////////////////////////////////
  
  

  
  
  
  dat<-read.table("Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/MiddleReadRaw.csv", header=TRUE, sep=",")
attach(dat)

ID<-factor(ID)
Grade<-factor(Grade)
School<-factor(School)
Course<-factor(Course)
Department<-factor(Department)
library("plyr", lib.loc="C:/Program Files/R/R-3.0.2/library")
t<-ddply(dat, .(School, Grade, Department, Course), summarise, Num=sum(count), LastSpringMedian=median(Sp13read), CurrentMedian=median(Sp14read))

write.csv(t, file="Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/SpringMiddleTemplateReadingSWAStoo.csv")
detach(dat)
rm(list=ls())

#//////////////////////////////////////////////////////////////////////////////
#  ///									   ///
#  ///     Spring & Spring Medians - MATH Grades 7-8 for Templates            ///
#  ///                  School, Grade, Department, Course                           ///
#  ///									   ///
#  //////////////////////////////////////////////////////////////////////////////
  
  
  
  
  dat<-read.table("Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/MiddleMathRaw.csv", header=TRUE, sep=",")
attach(dat)

ID<-factor(ID)
Grade<-factor(Grade)
School<-factor(School)
Course<-factor(Course)
Department<-factor(Department)
library("plyr", lib.loc="C:/Program Files/R/R-3.0.2/library")
t<-ddply(dat, .(School, Grade, Department, Course), summarise, Num=sum(count), LastSpringMedian=median(Sp13ma), CurrentMedian=median(Sp14ma))

write.csv(t, file="Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/SpringMiddleTemplateMath.csv")
detach(dat)
rm(list=ls())


#//////////////////////////////////////////////////////////////////////////////
#  ///									   ///
#  ///		               TOP OF TEMPLATES		        	   ///
#  ///     Spring & Spring Medians - READING Grades 7-8 for Templates         ///
#  ///                  Grade, Department, Course                                   ///
#  ///									   ///
#  //////////////////////////////////////////////////////////////////////////////
  
  
  
  
  
  
  dat<-read.table("Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/MiddleReadRaw.csv", header=TRUE, sep=",")
attach(dat)

ID<-factor(ID)
Grade<-factor(Grade)
School<-factor(School)
Course<-factor(Course)
Department<-factor(Department)
library("plyr", lib.loc="C:/Program Files/R/R-3.0.2/library")
t<-ddply(dat, .(Grade, Department, Course), summarise, Num=sum(count), LastSpringMedian=median(Sp13read), CurrentMedian=median(Sp14read))

write.csv(t, file="Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/SpringMiddleTemplateTOPReading.csv")
detach(dat)
rm(list=ls())

//////////////////////////////////////////////////////////////////////////////
  ///									   ///
  ///		               TOP OF TEMPLATES		        	   ///
  ///     Spring & Spring Medians - MATH Grades 7-8 for Templates            ///
  ///                        Grade, Department, Course                             ///
  ///									   ///
  //////////////////////////////////////////////////////////////////////////////
  
  
  
  
  dat<-read.table("Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/MiddleMathRaw.csv", header=TRUE, sep=",")
attach(dat)

ID<-factor(ID)
Grade<-factor(Grade)
School<-factor(School)
Course<-factor(Course)
Department<-factor(Department)
library("plyr", lib.loc="C:/Program Files/R/R-3.0.2/library")
t<-ddply(dat, .(Grade, Department, Course), summarise, Num=sum(count), LastSpringMedian=median(Sp13ma), CurrentMedian=median(Sp14ma))
write.csv(t, file="Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/SpringMiddleTemplateTOPMath.csv")
detach(dat)
rm(list=ls())








write.csv(t, file="Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/SpringMiddleTemplateMath.csv")