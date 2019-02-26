#Assignment 1
#Changing data from long to wide format
#Describing outcomes by client rather than observation level

#Open and load relevant libraries and setwd
library(reshape)
library(keep)
library(tidyr)
library(rmarkdown)
setwd("C:/Users/hayle/Documents/UW/Courses/EPI 740/Data")

#Read in data
macs<-read.delim("MACS-cd4-vload0.raw",header=FALSE,sep="",na.strings="NA")

#Rename variables
names(macs)<-c("id","months","age","cd4","cd8","vload0","aidscase","vtime","sctime","atime",
               "dtime","ideath")
macs1<-macs[,c("id","months","cd4","vload0")]
macs1

#Aggregate data by follow-up time
macs.wide<-spread(macs1,months,cd4)

#Summarize distribution of baseline viral load
summary(macs.wide)
hist(macs.wide$vload0,
     main="Distribution of baseline viral load",
     xlim=c(0,400000),
     breaks=100,
     col="darkblue")

#Round distribution of CD4 count by years 1,2,3, and 4
macs.wide<-transform(macs.wide,CD4yr1=rowMeans(macs.wide[,c(3:14)],na.rm=TRUE))
macs.wide<-transform(macs.wide,CD4yr2=rowMeans(macs.wide[,c(15:26)],na.rm=TRUE))
macs.wide<-transform(macs.wide,CD4yr3=rowMeans(macs.wide[,c(27:38)],na.rm=TRUE))
macs.wide<-transform(macs.wide,CD4yr4=rowMeans(macs.wide[,c(39:50)],na.rm=TRUE))
summary(macs.wide)

#Categorize viral load into quartiles


