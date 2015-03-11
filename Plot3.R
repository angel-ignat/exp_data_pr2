library(ggplot2)
#subset data for Baltimore
baltimore<-data[data$fips=="24510",]

#sum by year and type
all.by.year.and.type<-aggregate(Emissions ~ year + type, baltimore, sum)

g<-ggplot(all.by.year.and.type, aes(year, Emissions, color=type))
g<-g + geom_line() +
xlab("year") +
ylab(expression("Total PM"[2.5]*" Emissions"))
print (g)

# Save to file
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()