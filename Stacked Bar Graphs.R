library(ggplot2)
library(plyr)
library(scales)
dat$Performance_Band<-factor(dat$Performance_Band, levels=c("Lower", "As Expected", "Higher")) #This will put the data in order that is not alphabetical

g<-ggplot(dat, aes(y=Percent, x=Program, fill=Performance_Band)) #This is the base of the graph
g+geom_bar()+guides(fill=guide_legend(reverse=T))+
  scale_fill_manual(values=c("salmon", "gray","seagreen3"))+ # Colors for graph
  theme(axis.title.x=element_text(color="black", size=20))+ #Increase readability for x axis title
  theme(axis.title.y=element_text(color="black", size=20))+ #Increase readability for x axis title
  theme(axis.text.x=element_text(angle=30,hjust=1,vjust=1, size=14,color="black"))+ #Rotates and adjusts x axis tick marks
  theme(axis.text.y=element_text(size=14,color="black"))+ #Makes y axis tick marks easier to read
  theme(legend.text=element_text(size=14))+ #Increase Legend font
  scale_y_continuous(labels=percent) + # Uses 50% instead of .50 for y axis tick marks
  theme(legend.title=element_text(size=14)) # Increases legend font size
  
