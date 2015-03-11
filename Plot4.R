#merge data and classification
data.names<-merge(data, class, by="SCC")

# find all rows where Short.Name==coal
coal.v <- grepl("coal", NEISCC$Short.Name, ignore.case=TRUE)
coal <- data.names[coal.v, ]
all.by.year <- aggregate(Emissions ~ year, coal, sum)

library(ggplot2)
g <- ggplot(all.by.year, aes(year, Emissions))
g <- g + geom_line()+
xlab("year") +
ylab(expression('Total PM'[2.5]*" Emissions"))
print(g)

# Save to file
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()