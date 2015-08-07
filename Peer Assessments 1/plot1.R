source("load_data.R")
# creating Plot1
png(
  filename="plot1.png",
  width=480,
  height=480,
  units="px",
  bg="transparent"
)

hist(data$Global_active_power, 
     col= "red", 
     xlab= "Global Active Power (kilowatts)", 
     ylab= "Frequency", 
     main= "Global Active Power",
     breaks=12
     )

dev.off()