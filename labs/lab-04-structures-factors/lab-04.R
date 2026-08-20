# R Fundamental and Statistical Analysis for Beginners
# Lab 4: Data Structures and Factors
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
m <- as.matrix(d[c("mpg","wt","hp")]); slice <- m[1:3,2:3]
d$transmission <- factor(d$transmission,levels=c("Automatic","Manual"))
result <- list(data=d,matrix_slice=slice,counts=table(d$transmission))
write.csv(as.data.frame(result$counts),"analysis_output.csv",row.names=FALSE)
stopifnot(is.matrix(m),is.data.frame(d),is.factor(d$transmission))
cat("LAB VERIFIED: outputs created and checks passed\n")
