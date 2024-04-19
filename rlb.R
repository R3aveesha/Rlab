getwd()
setwd("C:\\Users\\USER\\Desktop\\rlab")
getwd()
data3<-read.csv("DATA 3.csv", header = TRUE, sep=",")
data3
names(data3)<-c("Age","Gender","Accommodation")
data3
data3$Gender<-factor(data3$Gender,c(1,2),c("male","female"))
data3
data3$Accommodation<-factor(data3$Accommodation,c(1,2,3),c("Home","Boarded","Lodging"))
data3                          
gender.freq<-table(Gender)                           
gender.freq                            
gender_acc.freq<-table(Gender,Accomadation)                     
gender_acc.freq
# Mean age for each combination of gender and accommodation
xtabs(Age-Gender+Accomadation)/gender_acc.freq
