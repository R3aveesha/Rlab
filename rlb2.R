
getwd()
setwd("C:\\Users\\USER\\Desktop\\rlab")
getwd()

#import csv and textfile

data3<-read.csv("DATA 3.csv",header = TRUE,sep=",")
data3
fix(data3)

#rename

names(data3)<-c("Age","gender","Accomadation")
data3

#rename categorical data

data3$gender<-factor(data3$gender,c(1,2),c("male","female"))
data3

data3$Accomadation<-factor(data3$Accomadation,c(1,2,3),c("home","borded","lodging"))
data3
attach(data3)


gender.freq<-table(Gender)
acc.freq<-table(Accomadation)
gender.freq
acc.freq

#pie chart

pie(gender.freq,"pie chart for gender")
pie(acc.freq,"pie chart for accomadaation")

#barplot
barplot(gender.freq,main="bar plot for gender",ylab = "frequency")
abline(h=0)

#boxplot
boxplot(Age,main="boxplot for age",ylab="Age",outpch=8)

#two way frequency table
gender_acc.freq<-table(Age,Accomadation)
gender_acc.freq
barplot(gender_acc.freq,main="gender and accomadation",legend=rownames(gender_acc.freq))
abline(h=0)


#clustered barcharts
barplot(gender_acc.freq,beside = TRUE,main="barplot",legend=rownames(gender_acc.freq))


