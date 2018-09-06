edu <- read.csv("viz1-oecd-education/oecd-dataset-2016.csv", stringsAsFactors=FALSE)
edu <- edu[, c('Country', 'ISCED.2011.A.education.level', 'Gender', 'Value')]
edu <- subset(edu, (ISCED.2011.A.education.level == 'Upper secondary education' & Gender == 'Total' & Value > 1))
edu$Country[edu$Country == 'China (People\'s Republic of)'] <- 'China'
edu <- edu[order(edu$Value),]
rownames(edu) <- NULL
save.image("viz1-oecd-education/oecd.RData")