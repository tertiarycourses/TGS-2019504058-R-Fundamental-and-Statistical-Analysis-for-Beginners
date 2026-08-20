# R Fundamental and Statistical Analysis for Beginners
# Lab 12: Hypothesis Testing and ANOVA Capstone
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
alpha <- 0.05; t_result <- t.test(value~group,data=subset(d,group %in% c("A","B"))); anova_model <- aov(value~group,d); posthoc <- TukeyHSD(anova_model)
result <- data.frame(test=c("two-sample t-test","one-way ANOVA"),p_value=c(t_result$p.value,summary(anova_model)[[1]][["Pr(>F)"]][1]),decision=c(ifelse(t_result$p.value<alpha,"Reject H0","Fail to reject H0"),ifelse(summary(anova_model)[[1]][["Pr(>F)"]][1]<alpha,"Reject H0","Fail to reject H0")))
write.csv(result,"analysis_output.csv",row.names=FALSE); capture.output(posthoc,file="posthoc.txt")
stopifnot(all(is.finite(result$p_value)))
cat("LAB VERIFIED: outputs created and checks passed\n")
