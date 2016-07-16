data=read.table("household_power_consumption.txt",sep=";",header=T)
data[,1]=as.Date(data[,1],"%d/%m/%y")
newdata=which(data[,1]=="2007-07-01" & "2007-07-02")
data1=data[newdata,]
#####plot
GAP=as.numeric(as.vector(data1[,3]))
hist(GAP,col="red",xlab="Global Active Power(in kilowatts)",main="Global Active Power")
