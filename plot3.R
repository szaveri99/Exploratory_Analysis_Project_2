file1 <- readRDS("C:\\Users\\Sakina Zaveri\\Desktop\\exdata_data_NEI_data\\Source_Classification_Code.rds")
file2 <- readRDS("C:\\Users\\Sakina Zaveri\\Desktop\\exdata_data_NEI_data\\summarySCC_PM25.rds")

head(file1)
head(file2)

names(file1)

data <- file2[,4:6]

agg <- aggregate(x = data$Emissions,by = list(year = data$year, type = data$type),FUN = sum)

library(ggplot2)

qplot(year,x,data = agg,color = type,geom = "line",
     main = "Baltimore City",xlab = "Year", ylab = "Total Emission")

dev.copy(png,"plot3.png")
dev.off()
