# R Fundamental and Statistical Analysis for Beginners
# Lab 6: Import, Validate and Export Weather Data
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
required <- c("Day","Month","Ozone","Temp"); stopifnot(all(required %in% names(d)),is.numeric(d$Ozone))
may <- d[d$Month==5 & !is.na(d$Ozone),]
result <- data.frame(source_rows=nrow(d),may_valid_rows=nrow(may),average_ozone=mean(may$Ozone),analysed_at=as.character(Sys.time()))
write.csv(result,"analysis_output.csv",row.names=FALSE)
cat("LAB VERIFIED: outputs created and checks passed\n")
