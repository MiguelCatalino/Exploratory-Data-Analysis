source("load_data.R")

coal <- SCC[grep("coal", SCC$Short.Name, ignore.case = TRUE),]
coal <- NEI[NEI$SCC %in% coal$SCC,]
total_emissions <- aggregate(Emissions ~ year, coal, sum)

png(
  filename = "plot4.png",
  width = 700,
  height = 480,
  units = "px"
)

plot(
  total_emissions,
  type = "l",
  xlab = "Year",
  col = "blue",
  main = "Total Emissions From Coal Combustion-related\n Sources from 1999 to 2008",
  ylab = expression('Total PM'[2.5] * " Emission")
)

dev.off()