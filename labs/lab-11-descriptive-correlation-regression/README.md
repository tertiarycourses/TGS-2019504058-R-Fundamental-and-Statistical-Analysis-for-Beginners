# Lab 11: Descriptive Statistics, Correlation and Regression

**Level:** Advanced  
**Mapping:** LO6 · K1 · K2 · A1 · A3 · A4 · A6  
**Concepts:** descriptive statistics, correlation, lm, residuals, R-squared

## Scenario

A health analytics team studies height, weight and a numeric outcome.

## Goal

A validated summary, correlation result, fitted model and diagnostic evidence.

## Files in this folder

- `lab-11.R` — completed guided R script
- `verify.R` — repeatable acceptance check
- `lab-workbook.xlsx` — brief, input data, controls and evidence record
- `input-data.csv` — portable fallback if `readxl` is unavailable

## Detailed step-by-step

1. Import the health dataset from the workbook.

2. Describe valid sample size, centre and spread.

3. Plot height versus weight and calculate Pearson correlation.

4. Fit a linear model and interpret slope and R-squared.

5. Inspect residuals and record one limitation.

## Run and verify

1. Set the RStudio working directory to this lab folder.
2. Open `lab-11.R` and read the header, inputs and validation rules.
3. Run the complete script with `source("lab-11.R")`.
4. Confirm the Console ends with `LAB VERIFIED: outputs created and checks passed`.
5. Run `source("verify.R")` and retain the verification message.
6. Open `analysis_output.csv` and compare the evidence with the workbook Control sheet.
7. Complete the workbook Evidence sheet and save it without changing the filename.

## Acceptance criteria

- [ ] Correlation interpretation includes direction and strength.
- [ ] Model formula and prediction target are explicit.
- [ ] Diagnostic evidence is included before a conclusion.

## Troubleshooting

- `there is no package called 'readxl'`: the script automatically uses `input-data.csv`; install `readxl` later if Excel import is required.
- `cannot open file`: confirm RStudio's working directory is this exact lab folder.
- `object not found`: run the script from the top so imports and validations occur before analysis.
- Verification fails: inspect the first error, compare column names with Input_Data, and rerun from a clean session.

## Evidence to submit

Completed Excel Evidence sheet, R script, generated output files and the final Console verification message.
