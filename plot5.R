
file1 <- readRDS("C:\\Users\\Sakina Zaveri\\Desktop\\exdata_data_NEI_data\\Source_Classification_Code.rds")
file2 <- readRDS("C:\\Users\\Sakina Zaveri\\Desktop\\exdata_data_NEI_data\\summarySCC_PM25.rds")

mob <- file1[grepl("Mobile",file1$EI.Sector),]
data <- file2[file2$SCC %in% mob$SCC,]

agg <- aggregate(x = data$Emissions,by = list(year = data$year),FUN = sum)

plot(agg$year,agg$x, type = "o",xlab = "Year",pch = 16,col="blue",
     ylab = "Total Emission",main = "emissions from motor vehicles from 1999–2008")
dev.copy(png,"plot5.png",width = 480,height = 480)
dev.off()
