data=read.table("household_power_consumption.txt",sep=";",header=T)
data[,1]=as.Date(data[,1],"%d/%m/%y")
newdata=which(data[,1]=="2007-07-01" & "2007-07-02")
data1=data[newdata,]
######plot
GAP=as.numeric(as.vector(data1[,3]))
plot(GAP,type="l",ylab="Global Active Power(kilowatts)",xlab=" ",xaxt="n")
axis(1,at=c(0,dim(data1)[1]/2,dim(data1)[1]),c("Thu","Fri","Sat"))
