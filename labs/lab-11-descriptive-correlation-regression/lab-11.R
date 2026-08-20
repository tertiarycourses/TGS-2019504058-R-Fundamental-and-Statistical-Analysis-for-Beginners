# R Fundamental and Statistical Analysis for Beginners
# Lab 11: Descriptive Statistics, Correlation and Regression
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
summary_out <- data.frame(n=nrow(d),mean_height=mean(d$height),sd_height=sd(d$height),mean_weight=mean(d$weight))
r <- cor(d$height,d$weight,use="complete.obs"); model <- lm(outcome~height+weight,d); diagnostics <- data.frame(correlation=r,r_squared=summary(model)$r.squared,mse=mean(residuals(model)^2))
write.csv(summary_out,"summary_output.csv",row.names=FALSE); write.csv(diagnostics,"analysis_output.csv",row.names=FALSE)
png("diagnostic.png"); plot(fitted(model),residuals(model)); abline(h=0,col="red"); dev.off()
cat("LAB VERIFIED: outputs created and checks passed\n")
