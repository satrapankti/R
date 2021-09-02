library(moments)
#### Stats ####
aq<-datasets::airquality
#top & last rows (head-top&tail-last)-by default 6
head(aq,5)
tail(aq,5)
#for accessing the columns 
aq[,c(3,6)]
aq$Temp   #can access any column using $ so no need to remember the column index
a<-aq[,-3]      # excluding any column
a
#for Descriptive Statistics a specific column
summary(aq[,2])
summary(aq$Solar.R)
#Descriptive Statistics for whole data
summary(aq)
#for Variance 
var(aq$Temp)
# for standard deviation
sd(aq$Temp)
sd(aq$Ozone,na.rm=T)   #sd for na values calculated without NA remove = True
# For Skewness and Kurtosis (works with moments package)
skewness(aq$Ozone,na.rm=T)
skewness(aq$Temp)
kurtosis(aq$Temp) 
#### Visualization ####
#Scattered Plot
plot(aq$Wind)
#to study relationship of 2 columns
plot(aq$Ozone,aq$Wind,type="p")   #plot as point
plot(aq$Day,type="l")  #plot as line
plot(aq$Day,type = "b") #plot as both line and point
#to add labels & colors to plot
plot(aq$Ozone,xlab = "No. of instances",ylab = "Ozone concentration",main = "Ozone level in NYC",col="red",type = "p")
#Bar Plot (same as plot)
barplot (aq$Ozone,xlab = "No. of instances",ylab = "Ozone concentration",main = "Ozone level in NYC",col="red",horiz = F)
# Histogram
hist(aq$Solar.R,main = "Solar Concentration",col="turquoise")
#Box Plot
boxplot(aq$Wind)
boxplot(aq$Wind)$out  #to check out layers
#Multiple BoxPlot
boxplot(aq[,1:3],main="Multiple")
#Multiple Graphs
#mar-margin of the grid,mfrow-no. of rows & columns,bty-border (o=yes,n=no)
#las-labels(1=horiz,0=ver)
par(mfrow=c(3,3),mar=c(2,5,2,1),  las=0, bty="O")
plot(aq$Wind)
plot(aq$Day,type="l")
plot(aq$Day,type = "b")
barplot (aq$Ozone,xlab = "No. of instances",ylab = "Ozone concentration",main = "Ozone level in NYC",col="red",horiz = F)
hist(aq$Solar.R,main = "Solar Concentration",col="turquoise")
boxplot(aq$Wind)
boxplot(aq[,1:3],main="Multiple")
barplot(aq$Month)
hist(aq$Temp)
#Density Plot
plot(density.default(qs$long),lwd=2,col="green")
