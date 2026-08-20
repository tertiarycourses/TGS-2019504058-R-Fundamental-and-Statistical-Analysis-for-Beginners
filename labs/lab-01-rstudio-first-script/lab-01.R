# R Fundamental and Statistical Analysis for Beginners
# Lab 1: Your First Reproducible R Script
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
valid <- d$AttendanceHours[!is.na(d$AttendanceHours)]
result <- data.frame(valid_n=length(valid), mean_hours=mean(valid), minimum=min(valid))
write.csv(result,"analysis_output.csv",row.names=FALSE)
stopifnot(result$valid_n == 4)
cat("LAB VERIFIED: outputs created and checks passed\n")
