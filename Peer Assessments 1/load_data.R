
##File path
file_name<-"household_power_consumption.txt"
##read the file
data<- read.table(file_name, sep=";"
                  , header=T, quote= "", 
                  strip.white=TRUE, stringsAsFactors = F
                  , na.strings= "?")


##subset the data from the dates 2007-02-01 and 2007-02-02
data<- subset(data, (data$Date == "1/2/2007" | data$Date== "2/2/2007")) 
x <- paste(data$Date, data$Time)
data$Date<-as.Date(data$Date)
data$Time<-strptime(x, "%d/%m/%Y %H:%M:%S")
