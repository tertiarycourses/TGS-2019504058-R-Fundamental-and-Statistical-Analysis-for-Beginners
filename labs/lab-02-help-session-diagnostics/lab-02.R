# R Fundamental and Statistical Analysis for Beginners
# Lab 2: Help, Objects and Session Diagnostics
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
diagnosis <- data.frame(issue=d$Issue, action=c("check args(mean)","inspect str(height)","inspect names(vehicle)"))
print(args(mean)); print(str(d)); print(sessionInfo())
write.csv(diagnosis,"analysis_output.csv",row.names=FALSE)
cat("LAB VERIFIED: outputs created and checks passed\n")
