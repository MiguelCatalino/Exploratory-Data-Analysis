source("load_data.R")
library(ggplot2)

maryland_data <- subset(NEI, fips == '24510')

png(
  filename = "plot3.png",
  width = 700,
  height = 480,
  units = "px"
)

ggplot(maryland_data, aes(year, Emissions, color = type)) +
  geom_line(stat = "summary", fun.y = "sum") +
  xlab("Year") +
  ylab(expression('Total PM'[2.5] * " Emissions")) +
  ggtitle("Total Emissions in Baltimore City, Maryland from 1999 to 2008")

dev.off()