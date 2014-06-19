

data.before.tetra.to.R <- read.csv("Z:/admdata/DATA/AssessmentData/2013-2014 CSIp/CSIP Templates/Spring Background Data/data before tetra to R.csv")
dat<-data.before.tetra.to.R
rm(data.before.tetra.to.R)
attach(dat)








# g= grade
g<-5
t.test(TestPercentile[dat$TestName=="Reading Survey w/ Goals 2-5 Common Core V4"&dat$GradeName==g&
                        dat$StudentGender=="F"],
       TestPercentile[dat$TestName=="Reading Survey w/ Goals 2-5 Common Core V4"&dat$GradeName==g&
                        dat$StudentGender=="M"] )

t.test(TestRITScore[dat$TestName=="Reading Survey w/ Goals 2-5 Common Core V4"&dat$GradeName==g&
                        dat$StudentGender=="F"],
       TestRITScore[dat$TestName=="Reading Survey w/ Goals 2-5 Common Core V4"&dat$GradeName==g&
                        dat$StudentGender=="M"] )

#Reading Survey w/ Goals 6+ Common Core V4

g<-6
t.test(TestPercentile[dat$TestName=="Reading Survey w/ Goals 6+ Common Core V4"&dat$GradeName==g&
                        dat$StudentGender=="F"],
       TestPercentile[dat$TestName=="Reading Survey w/ Goals 6+ Common Core V4"&dat$GradeName==g&
                        dat$StudentGender=="M"] )

t.test(TestRITScore[dat$TestName=="Reading Survey w/ Goals 6+ Common Core V4"&dat$GradeName==g&
                      dat$StudentGender=="F"],
       TestRITScore[dat$TestName=="Reading Survey w/ Goals 6+ Common Core V4"&dat$GradeName==g&
                      dat$StudentGender=="M"] )

g<-7
t.test(TestPercentile[dat$TestName=="Reading Survey w/ Goals 6+ Common Core V4"&dat$GradeName==g&
                        dat$StudentGender=="F"],
       TestPercentile[dat$TestName=="Reading Survey w/ Goals 6+ Common Core V4"&dat$GradeName==g&
                        dat$StudentGender=="M"] )

t.test(TestRITScore[dat$TestName=="Reading Survey w/ Goals 6+ Common Core V4"&dat$GradeName==g&
                      dat$StudentGender=="F"],
       TestRITScore[dat$TestName=="Reading Survey w/ Goals 6+ Common Core V4"&dat$GradeName==g&
                      dat$StudentGender=="M"] )








# g= grade
g<-2
t.test(TestPercentile[dat$TestName=="Math Survey w/ Goals 2-5 Common Core V4"&dat$GradeName==g&
                        dat$StudentGender=="F"],
       TestPercentile[dat$TestName=="Math Survey w/ Goals 2-5 Common Core V4"&dat$GradeName==g&
                        dat$StudentGender=="M"] )

t.test(TestRITScore[dat$TestName=="Math Survey w/ Goals 2-5 Common Core V4"&dat$GradeName==g&
                      dat$StudentGender=="F"],
       TestRITScore[dat$TestName=="Math Survey w/ Goals 2-5 Common Core V4"&dat$GradeName==g&
                      dat$StudentGender=="M"] )
g<-3
t.test(TestPercentile[dat$TestName=="Math Survey w/ Goals 2-5 Common Core V4"&dat$GradeName==g&
                        dat$StudentGender=="F"],
       TestPercentile[dat$TestName=="Math Survey w/ Goals 2-5 Common Core V4"&dat$GradeName==g&
                        dat$StudentGender=="M"] )

t.test(TestRITScore[dat$TestName=="Math Survey w/ Goals 2-5 Common Core V4"&dat$GradeName==g&
                      dat$StudentGender=="F"],
       TestRITScore[dat$TestName=="Math Survey w/ Goals 2-5 Common Core V4"&dat$GradeName==g&
                      dat$StudentGender=="M"] )
g<-4
t.test(TestPercentile[dat$TestName=="Math Survey w/ Goals 2-5 Common Core V4"&dat$GradeName==g&
                        dat$StudentGender=="F"],
       TestPercentile[dat$TestName=="Math Survey w/ Goals 2-5 Common Core V4"&dat$GradeName==g&
                        dat$StudentGender=="M"] )

t.test(TestRITScore[dat$TestName=="Math Survey w/ Goals 2-5 Common Core V4"&dat$GradeName==g&
                      dat$StudentGender=="F"],
       TestRITScore[dat$TestName=="Math Survey w/ Goals 2-5 Common Core V4"&dat$GradeName==g&
                      dat$StudentGender=="M"] )
g<-5
t.test(TestPercentile[dat$TestName=="Math Survey w/ Goals 2-5 Common Core V4"&dat$GradeName==g&
                        dat$StudentGender=="F"],
       TestPercentile[dat$TestName=="Math Survey w/ Goals 2-5 Common Core V4"&dat$GradeName==g&
                        dat$StudentGender=="M"] )

t.test(TestRITScore[dat$TestName=="Math Survey w/ Goals 2-5 Common Core V4"&dat$GradeName==g&
                      dat$StudentGender=="F"],
       TestRITScore[dat$TestName=="Math Survey w/ Goals 2-5 Common Core V4"&dat$GradeName==g&
                      dat$StudentGender=="M"] )

#Math Survey w/ Goals 6+ Common Core V4

g<-6
t.test(TestPercentile[dat$TestName=="Math Survey w/ Goals 6+ Common Core V4"&dat$GradeName==g&
                        dat$StudentGender=="F"],
       TestPercentile[dat$TestName=="Math Survey w/ Goals 6+ Common Core V4"&dat$GradeName==g&
                        dat$StudentGender=="M"] )

t.test(TestRITScore[dat$TestName=="Math Survey w/ Goals 6+ Common Core V4"&dat$GradeName==g&
                      dat$StudentGender=="F"],
       TestRITScore[dat$TestName=="Math Survey w/ Goals 6+ Common Core V4"&dat$GradeName==g&
                      dat$StudentGender=="M"] )

g<-7
t.test(TestPercentile[dat$TestName=="Math Survey w/ Goals 6+ Common Core V4"&dat$GradeName==g&
                        dat$StudentGender=="F"],
       TestPercentile[dat$TestName=="Math Survey w/ Goals 6+ Common Core V4"&dat$GradeName==g&
                        dat$StudentGender=="M"] )

t.test(TestRITScore[dat$TestName=="Math Survey w/ Goals 6+ Common Core V4"&dat$GradeName==g&
                      dat$StudentGender=="F"],
       TestRITScore[dat$TestName=="Math Survey w/ Goals 6+ Common Core V4"&dat$GradeName==g&
                      dat$StudentGender=="M"] )







