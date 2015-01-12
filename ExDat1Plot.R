#read the DataFile

dataFile <- read.table("household_power_consumption.txt",header=TRUE,sep=";",stringsAsFactors=FALSE )
# filter those data between  Feb 1 thru Feb 2 of 2007; The dates are in DD/MM/YYYY Format
dataFile2 <- dataFile[66637:69516,]
hist(as.numeric(dataFile2$Global_active_power),col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
