dat<-read.table("clipboard", header=T)
dat2<-read.table("clipboard", header=T)

dat<-merge(dat,dat2, by='CAT')

Illinois_SGP<-prepareSGP(dat, state="IL")
is.SGP(Illinois_SGP)
Illinois_SGP<-analyzeSGP(Illinois_SGP, state="IL")
combineSGP(Illinois_SGP, state="IL")
summarizeSGP(Illinois_SGP, state="IL")
sgp_object<-visualizeSGP(sgp_object, state="IL")
outputSGP(Illinois_SGP, state="IL")

#############~~~~~~~~~~~from Damian
Illinois_SGP <- abcSGP(Illinois_SGP, state="IL", steps=c("prepareSGP", "analyzeSGP", "combineSGP"), save.intermediate.results=TRUE, sgp.percentiles=TRUE, sgp.projections=TRUE, sgp.projections.lagged=TRUE, sgp.percentiles.baseline=FALSE, sgp.projections.baseline=FALSE, sgp.projections.lagged.baseline=FALSE)




visualizeSGP(
  sgp_object,
  plot.types=c("bubblePlot", "studentGrowthPlot", "growthAchievementPlot"),
  state,
  bPlot.years=NULL,
  bPlot.content_areas=NULL,
  bPlot.districts=NULL,
  bPlot.schools=NULL,
  bPlot.instructors=NULL,
  bPlot.styles=c(1),
  bPlot.levels=NULL,
  bPlot.level.cuts=NULL,
  bPlot.full.academic.year=TRUE,
  bPlot.minimum.n=10,
  bPlot.anonymize=FALSE,
  bPlot.prior.achievement=TRUE,
  bPlot.draft=FALSE,
  bPlot.demo=FALSE,
  bPlot.format="print",
  bPlot.folder="Visualizations/bubblePlots",
  sgPlot.save.sgPlot.data=FALSE,
  sgPlot.years=NULL,
  sgPlot.content_areas=NULL,
  sgPlot.districts=NULL,
  sgPlot.schools=NULL,
  sgPlot.reports.by.school=TRUE,
  sgPlot.instructors=NULL,
  sgPlot.reports.by.instructor=FALSE,
  sgPlot.students=NULL,
  sgPlot.reports.by.student=FALSE,
  sgPlot.header.footer.color="#4CB9CC",
  sgPlot.front.page=NULL,
  sgPlot.folder="Visualizations/studentGrowthPlots",
  sgPlot.folder.names="number",
  sgPlot.fan=TRUE,
  sgPlot.sgp.targets=FALSE,
  sgPlot.sgp.targets.timeframe=3,
  sgPlot.anonymize=FALSE,
  sgPlot.cleanup=TRUE,
  sgPlot.demo.report=FALSE,
  sgPlot.produce.plots=TRUE,
  sgPlot.baseline=NULL,
  sgPlot.zip=TRUE,
  sgPlot.output.format="PDF",
  sgPlot.year.span=5,
  gaPlot.years=NULL,
  gaPlot.content_areas=NULL,