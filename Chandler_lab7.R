#Program: Chandler_lab7_.R
#Program performs analysis on Epub data set
#Author: Thomas Chandler
#Date: April 8, 2022


install.packages("arules")
require(arules)
data("Epub")

ep <- apriori(Epub,parameter=list(support=.0004,confidence=.1,minlen=2,maxlen=100))
summary(ep)
inspect(sort(ep,by="count")[1:50])
inspect(sort(ep,by="coverage")[1:50])
inspect(sort(ep,by="lift")[1:50])
