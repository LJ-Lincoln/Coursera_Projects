data=read.table("household_power_consumption.txt",sep=";",header=T)
data[,1]=as.Date(data[,1],"%d/%m/%y")
newdata=which(data[,1]=="2007-07-01" & "2007-07-02")
data1=data[newdata,]
######plot
par(mfrow=c(2,2),mfcol=c(2,2))

##plot1
GAP=as.numeric(as.vector(data1[,3]))
plot(GAP,type="l",ylab="Global Active Power",xlab=" ",xaxt="n")
axis(1,at=c(0,dim(data1)[1]/2,dim(data1)[1]),c("Thu","Fri","Sat"))


##plot2

ESM1=as.numeric(as.vector(data1[,7]))
ESM2=as.numeric(as.vector(data1[,8]))
ESM3=as.numeric(as.vector(data1[,9]))
plot(ESM1,type="l",ylab="Energy sub metering",xlab=" ",xaxt="n")
lines(ESM2,col="red")
lines(ESM3,col="blue")
legend("topright", pch ="_____", col = c("black","red", "blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),bty="n")
axis(1,at=c(0,dim(data1)[1]/2,dim(data1)[1]),c("Thu","Fri","Sat"))



##plot3
Voltage=as.numeric(as.vector(data1[,5]))
plot(Voltage,type="l",ylab="Voltage",xlab="datetime",xaxt="n")
axis(1,at=c(0,dim(data1)[1]/2,dim(data1)[1]),c("Thu","Fri","Sat"))


##plot4
GRP=as.numeric(as.vector(data1[,4]))
plot(GRP,type="l",ylab="Global_reactive_power",xlab="datetime",xaxt="n")
axis(1,at=c(0,dim(data1)[1]/2,dim(data1)[1]),c("Thu","Fri","Sat"))







