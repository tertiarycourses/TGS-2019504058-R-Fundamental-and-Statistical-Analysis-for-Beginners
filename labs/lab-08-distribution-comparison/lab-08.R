# R Fundamental and Statistical Analysis for Beginners
# Lab 8: Compare Distributions with Boxplots
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
d$feed <- factor(d$feed); stats <- aggregate(weight~feed,d,function(x)c(n=length(x),median=median(x),IQR=IQR(x)))
png("feed-boxplot.png",width=1000,height=650); boxplot(weight~feed,d,col="#10B981",las=2,ylab="Weight"); dev.off()
write.csv(data.frame(feed=stats$feed,stats$weight),"analysis_output.csv",row.names=FALSE)
stopifnot(length(levels(d$feed))==6)
cat("LAB VERIFIED: outputs created and checks passed\n")
