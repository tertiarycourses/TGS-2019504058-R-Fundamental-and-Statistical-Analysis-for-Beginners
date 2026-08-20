# R Fundamental and Statistical Analysis for Beginners
# Lab 5: Packages and Built-in Datasets
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
profiles <- list(mtcars=c(nrow(mtcars),ncol(mtcars)),quakes=c(nrow(quakes),ncol(quakes)),sleep=c(nrow(sleep),ncol(sleep)),chickwts=c(nrow(chickwts),ncol(chickwts)))
result <- data.frame(dataset=names(profiles),rows=sapply(profiles,`[`,1),columns=sapply(profiles,`[`,2))
write.csv(result,"analysis_output.csv",row.names=FALSE); writeLines(capture.output(sessionInfo()),"session-info.txt")
stopifnot(all(result$rows == d$ExpectedRows))
cat("LAB VERIFIED: outputs created and checks passed\n")
