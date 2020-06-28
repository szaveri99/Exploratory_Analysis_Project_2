
file1 <- readRDS("C:\\Users\\Sakina Zaveri\\Desktop\\exdata_data_NEI_data\\Source_Classification_Code.rds")
file2 <- readRDS("C:\\Users\\Sakina Zaveri\\Desktop\\exdata_data_NEI_data\\summarySCC_PM25.rds")

agg <- aggregate(x = file2$Emissions,by = list(year = file2$year),FUN = sum)

plot(agg$year,agg$x,col = "blue",type = "p",pch=5,lwd = 2,
     main = "Total Emission from all Sources",xlab = "Year", ylab = "Total Emission")

dev.copy(png,"plot1.png")
dev.off()
