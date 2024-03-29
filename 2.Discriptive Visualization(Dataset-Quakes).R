library(moments)
qs<-datasets::quakes
head(qs,5)
tail(qs,5)
qs[,c(2,5)]
qs$mag
q<-qs[,-2]
q
summary(qs[,1])
summary(qs$long)
summary(qs)
var(qs$long)
sd(qs$long)
skewness(qs$stations)
kurtosis(qs$stations)
plot(qs$stations)
plot(qs$mag,qs$depth,type="p")
plot(qs$depth,type="l")
plot(qs$depth,type = "b")
plot(qs$mag,xlab="Quake Frequency",ylab = "Magnitude",main = "Earthquake",col="green",type ="p")
barplot(qs$mag,xlab="Quake Frequency",ylab = "Magnitude",main = "Earthquake",col="green",horiz =T)
hist(qs$stations,main = "Quake",col = "orchid")
boxplot(qs$depth)
boxplot(qs[,c(1,3,4)])
par(mfrow=c(3,3),las=o,bty="o")
plot(qs$depth,type = "b")
hist(qs$stations,main = "Quake",col = "orchid")
boxplot(qs$depth)
barplot(qs$mag,xlab="Quake Frequency",ylab = "Magnitude",main = "Earthquake",col="green",horiz =T)
plot(density.default(qs$stations),lwd=0.5,col="red")
