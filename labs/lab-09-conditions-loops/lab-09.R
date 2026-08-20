# R Fundamental and Statistical Analysis for Beginners
# Lab 9: Conditions, Loops, next and break
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
count <- 0; skipped <- integer(); stopped_at <- NA_integer_
for (i in seq_len(nrow(d))) { if (is.na(d$Temperature[i])) { skipped <- c(skipped,d$Day[i]); next }; if (d$Temperature[i] > d$SafetyStop[i]) { stopped_at <- d$Day[i]; break }; if (d$Temperature[i] > 65) count <- count+1 }
result <- data.frame(count_above_65=count,skipped=paste(skipped,collapse=","),stopped_at=stopped_at)
write.csv(result,"analysis_output.csv",row.names=FALSE); stopifnot(count==2)
cat("LAB VERIFIED: outputs created and checks passed\n")
