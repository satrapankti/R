
Universities<-read.csv("E:/ExcelR/Data Science(Andheri-Sadanand-Chirag)(21st Aug 2021)/Data Set Files/8.Universities.csv")

# Elbow method
install.packages("factoextra")
library(factoextra)
fviz_nbclust(Universities[,-1], kmeans, method = "wss") +
  labs(subtitle = "Elbow method")

###Cluster algorithm building
km <- kmeans(Universities[,-1],4) 
km$centers
km$cluster
clust<-data.frame("University" = Universities[,1], "cluster" = km$cluster)

##Animation
install.packages("animation")
library(animation)
km <- kmeans.ani(Universities[,-c(1)], 4)
cl<-data.frame("Uni" = Universities[,1])
cl