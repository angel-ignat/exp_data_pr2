#read data from directory where is downloaded and unzipped

data<-readRDS("summarySCC_PM25.rds")
class<-readRDS("Source_Classification_Code.rds")
plot(all.by.year$year, all.by.year$Emissions/1000, xlab="year", ylab=expression('toalal PM'[2.5]*' emission in 1000 tons'))

# Save to file
dev.copy(png, file="plot1.png", height=480, width=480)
> dev.off()