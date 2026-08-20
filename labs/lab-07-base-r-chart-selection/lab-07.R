# R Fundamental and Statistical Analysis for Beginners
# Lab 7: Base R Chart Selection
# Version v15.0 · 20 August 2026

read_input <- function() {
  if (requireNamespace("readxl", quietly = TRUE)) {
    readxl::read_excel("lab-workbook.xlsx", sheet = "Input_Data")
  } else {
    read.csv("input-data.csv", stringsAsFactors = FALSE)
  }
}

d <- read_input()
stopifnot(nrow(d) > 0)
png("scatter.png"); plot(d$wt,d$mpg,pch=19,col="#1F6FEB",xlab="Weight (1000 lb)",ylab="Miles per gallon"); dev.off()
png("bar.png"); barplot(table(d$transmission),ylim=c(0,max(table(d$transmission))+1),col="#10B981"); dev.off()
png("histogram.png"); hist(d$mpg,breaks=5,col="#7C3AED",main="Fuel economy distribution",xlab="Miles per gallon"); dev.off()
write.csv(data.frame(question=c("relationship","category count","distribution"),file=c("scatter.png","bar.png","histogram.png")),"analysis_output.csv",row.names=FALSE)
cat("LAB VERIFIED: outputs created and checks passed\n")
