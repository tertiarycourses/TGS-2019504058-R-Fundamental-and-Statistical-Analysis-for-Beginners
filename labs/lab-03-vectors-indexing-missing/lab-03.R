# R Fundamental and Statistical Analysis for Beginners
# Lab 3: Vectors, Indexing and Missing Values
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
valid <- !is.na(d$Value) & d$Value >= d$ValidMin & d$Value <= d$ValidMax
clean <- d[valid, c("ReadingId","Value")]
result <- data.frame(mean=mean(clean$Value),median=median(clean$Value),IQR=IQR(clean$Value))
write.csv(clean,"cleaned_data.csv",row.names=FALSE); write.csv(result,"analysis_output.csv",row.names=FALSE)
stopifnot(nrow(clean)==3)
cat("LAB VERIFIED: outputs created and checks passed\n")
