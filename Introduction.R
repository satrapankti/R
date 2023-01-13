a1<-5
df<-data.frame(x=1:3,y=c("a","b","c"))
Df_new<-data.frame(height=c(150,160),weight=c(65,72))
df1<-data.frame(Name=c("Pankti","Anand","Ekta","Aashish"),Age=c(21,35,26,23),Gender=c("Female","Male","Female","Male"))
rownames(df1)<-c("Student1","Sir","Student2","Student3")
df[1,1]
df[1,c(1,2)]
df[c(1,3),2]
df[c(1,3),1]
df[c(1,3),]
df[c(1,3),c(1,2)]
df[c(2,3),c(1,2)]
install.packages("moments")
install.packages("dplR")
library(moments)

