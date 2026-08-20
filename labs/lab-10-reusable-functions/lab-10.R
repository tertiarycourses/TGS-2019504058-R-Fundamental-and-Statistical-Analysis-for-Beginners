# R Fundamental and Statistical Analysis for Beginners
# Lab 10: Build and Test Reusable Functions
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
roll_dice <- function(n=2,sides=6) { stopifnot(n>=1,sides>=2); sum(sample(seq_len(sides),size=n,replace=TRUE)) }
summarise_rolls <- function(x, ...) mean(x, ...)
set.seed(42); rolls <- replicate(100,roll_dice())
result <- data.frame(n=length(rolls),mean=summarise_rolls(rolls),min=min(rolls),max=max(rolls))
write.csv(result,"analysis_output.csv",row.names=FALSE); stopifnot(result$min>=2,result$max<=12)
cat("LAB VERIFIED: outputs created and checks passed\n")
