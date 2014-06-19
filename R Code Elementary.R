

#//////////////////////////////////////////////////////////////////////////////
#///  								   ///
#///     Spring & Spring Medians - READING Grades 3-6 for Templates         ///
#///                  School, Grade, Program 		                   ///
#///									   ///
#//////////////////////////////////////////////////////////////////////////////






dat<-read.table("Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/ElemReadRaw.csv", header=TRUE, sep=",")
attach(dat)

ID<-factor(ID)
Grade<-factor(Grade)
School<-factor(School)
prog<-factor(prog)
library(plyr)
t<-ddply(dat, .(School, Grade, prog), summarise, Num=sum(count), Spring13Median=median(Sp13read), Spring14Median=median(Sp14read))

write.csv(t, file="Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/SpringElemREAD.csv")
detach(dat)
rm(list=ls())

#//////////////////////////////////////////////////////////////////////////////
#///									   ///
#///     Spring & Spring Medians - MATH Grades 3-6 for Templates            ///
#///                  School, Grade, Program	                           ///
#///									   ///
#//////////////////////////////////////////////////////////////////////////////




dat<-read.table("Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/ElemMathRaw.csv", header=TRUE, sep=",")
attach(dat)

ID<-factor(ID)
Grade<-factor(Grade)
School<-factor(School)
prog<-factor(prog)
library(plyr)
t<-ddply(dat, .(School, Grade, prog), summarise, Num=sum(count), Spring13Median=median(Sp13ma), Spring14Median=median(Sp14ma))

write.csv(t, file="Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/SpringElemMATH.csv")
detach(dat)
rm(list=ls())



#//////////////////////////////////////////////////////////////////////////////
#///    						                                                    	   ///
#///              Spring Medians - READING Grades 3-6 for Templates         ///
#///                  Grade, Program 		                                    ///
#///									                                                      ///
#//////////////////////////////////////////////////////////////////////////////






dat<-read.table("Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/ElemReadingRawGlobal.csv", header=TRUE, sep=",")
attach(dat)

ID<-factor(ID)
Grade<-factor(Grade)
School<-factor(School)
genorELL<-factor(genorELL)
library(plyr)
t<-ddply(dat, .(Grade, genorELL), summarise, Mean=mean(Sp14read), Spring13Median=median(Sp13read), Spring14Median=median(Sp14read))

write.csv(t, file="Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/SpringReadingMedians.csv")
detach(dat)
rm(list=ls())

#//////////////////////////////////////////////////////////////////////////////
#///							                                                     		   ///
#///              Spring Medians - MATH Grades 3-6 for Templates            ///
#///                           Grade, Program	                              ///
#///									                                                      ///
#//////////////////////////////////////////////////////////////////////////////




dat<-read.table("Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/ElemMathRawGlobal.csv", header=TRUE, sep=",")
attach(dat)

ID<-factor(ID)
Grade<-factor(Grade)
School<-factor(School)
genorELL<-factor(genorELL)
library(plyr)
t<-ddply(dat, .(Grade, genorELL), summarise,Mean=mean(Sp14ma),  Spring13Median=median(Sp13ma), Spring14Median=median(Sp14ma))

write.csv(t, file="Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/SpringMathMedians.csv")
detach(dat)
rm(list=ls())



#//////////////////////////////////////////////////////////////////////////////
#///  								                                                      ///
#///     Spring Medians - READING Grade  2   for Templates                  ///
#///                  School, Grade, Program                                ///
#///									                                                      ///
#//////////////////////////////////////////////////////////////////////////////




dat<-read.table("Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/2ndGradeReadingRaw.csv", header=TRUE, sep=",")
attach(dat)

ID<-factor(ID)
Grade<-factor(Grade)
School<-factor(School)
Course<-factor(Program)
lang<-factor(lang)
Text.Level<-as.factor(Textlevel)
library(plyr)

t2<-ddply(dat, .(School, Grade, Program), summarise, Num=sum(n),AtRisk=sum(n[Textlevel=="At Risk"]),GtoI=sum(n[Textlevel=="G to I"]), JandAbove=sum(n[Textlevel=="J and Above"]), MedianTL=median(TLScale),SpringMedian=median(Sp14read)  )
write.csv(t2, file="Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/SpringGr2READING_TextLevel.csv")
detach(dat)
rm(list=ls())


#//////////////////////////////////////////////////////////////////////////////
#///  								                                                      ///
#///     Spring  MATH Grades 2  for Templates                               ///
#///                  School, Grade, Program	                              ///
#///									                                                      ///
#//////////////////////////////////////////////////////////////////////////////




dat<-read.table("Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/2ndGradeMathRaw.csv", header=TRUE, sep=",")
attach(dat)

ID<-factor(ID)
Grade<-factor(Grade)
School<-factor(School)
Program<-factor(Program)
library(plyr)
t<-ddply(dat, .(School, Grade, Program), summarise, Num=sum(n), Median=median(Sp14ma))

write.csv(t, file="Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/SpringGrade2_Math.csv")
detach(dat)
rm(list=ls())


#//////////////////////////////////////////////////////////////////////////////
#///    							                                                      ///
#///     Spring Medians - READING Grade  2   for TOP Templates                  ///
#///                  School, Grade, Program                                ///
#///									                                                      ///
#//////////////////////////////////////////////////////////////////////////////




dat<-read.table("Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/2ndGradeReadingRaw.csv", header=TRUE, sep=",")
attach(dat)

ID<-factor(ID)
Grade<-factor(Grade)
School<-factor(School)
prog<-factor(prog)
lang<-factor(lang)
Text.Level<-as.factor(Textlevel)
library(plyr)

t2<-ddply(dat, .(Grade, prog), summarise, Num=sum(n),SpringMedian=median(Sp14read)  )
write.csv(t2, file="Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/SpringGr2READING TOP.csv")
detach(dat)
rm(list=ls())


#//////////////////////////////////////////////////////////////////////////////
#///  								                                                      ///
#///     Spring  MATH Grades 2  for TOP Templates                               ///
#///                  School, Grade, Program	                              ///
#///									                                                      ///
#//////////////////////////////////////////////////////////////////////////////




dat<-read.table("Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/2ndGradeMathRaw.csv", header=TRUE, sep=",")
attach(dat)

ID<-factor(ID)
Grade<-factor(Grade)
School<-factor(School)
prog<-factor(prog)
library(plyr)
t<-ddply(dat, .(Grade, prog), summarise, Num=sum(n), Median=median(Sp14ma))

write.csv(t, file="Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/SpringGrade2_Math TOP.csv")
detach(dat)
rm(list=ls())


#//////////////////////////////////////////////////////////////////////////////
#///    							 CHANNING  ///
#///     Spring & Spring Medians - READING Grades 3-6 for Templates         ///
#///                  School, Grade, Program 		                   ///
#///									   ///
#//////////////////////////////////////////////////////////////////////////////






dat<-read.table("Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/ElemReadRaw.csv", header=TRUE, sep=",")
attach(dat)

ID<-factor(ID)
Grade<-factor(Grade)
School<-factor(School)
type<-factor(type)
library(plyr)
t<-ddply(dat, .(School, Grade, type), summarise, Num=sum(count), Spring13Median=median(Sp13read), Spring14Median=median(Sp14read))

write.csv(t, file="Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/SpringElemREADCHANNING.csv")
detach(dat)
rm(list=ls())

#//////////////////////////////////////////////////////////////////////////////
#///									  CHANNING ///
#///     Spring & Spring Medians - MATH Grades 3-6 for Templates            ///
#///                  School, Grade, Program	                           ///
#///									   ///
#//////////////////////////////////////////////////////////////////////////////




dat<-read.table("Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/ElemMathRaw.csv", header=TRUE, sep=",")
attach(dat)

ID<-factor(ID)
Grade<-factor(Grade)
School<-factor(School)
type<-factor(type)
library(plyr)
t<-ddply(dat, .(School, Grade, type), summarise, Num=sum(count), Spring13Median=median(Sp13ma), Spring14Median=median(Sp14ma))

write.csv(t, file="Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/SpringElemMATHCHANNING.csv")
detach(dat)
rm(list=ls())

