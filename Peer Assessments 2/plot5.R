source("load_data.R")

maryland_data <- subset(NEI, fips == '24510')
motor <- SCC[grep("motor", SCC$Short.Name, ignore.case = TRUE),]
motor <- maryland_data[maryland_data$SCC %in% motor$SCC,]
total_emissions <- aggregate(Emissions ~ year, motor, sum)


png(
  filename = "plot5.png",
  width = 700,
  height = 480,
  units = "px"
)

plot(
  total_emissions,
  type = "l",
  xlab = "Year",
  col = "blue",
  main = "Total Emissions From Motor Vehicle Sources\n from 1999 to 2008 in Baltimore City, Maryland",
  ylab = expression('Total PM'[2.5] * " Emission")
)

dev.off()