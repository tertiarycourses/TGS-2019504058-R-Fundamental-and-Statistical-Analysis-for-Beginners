# Lab 3: Vectors, Indexing and Missing Values

**Level:** Foundation  
**Mapping:** LO2 · K3 · A5  
**Concepts:** vectors, logical indexing, NA, mean, median, IQR

## Scenario

An operations analyst must clean sensor readings before reporting an average.

## Goal

A clean vector, filtered subset and robust summary table.

## Files in this folder

- `lab-03.R` — completed guided R script
- `verify.R` — repeatable acceptance check
- `lab-workbook.xlsx` — brief, input data, controls and evidence record
- `input-data.csv` — portable fallback if `readxl` is unavailable

## Detailed step-by-step

1. Read Input_Data from the workbook using readxl.

2. Create a numeric vector and inspect its type and length.

3. Remove missing values with is.na() and flag readings outside the valid range.

4. Calculate mean, median and IQR.

5. Export the cleaned data and run verification.

## Run and verify

1. Set the RStudio working directory to this lab folder.
2. Open `lab-03.R` and read the header, inputs and validation rules.
3. Run the complete script with `source("lab-03.R")`.
4. Confirm the Console ends with `LAB VERIFIED: outputs created and checks passed`.
5. Run `source("verify.R")` and retain the verification message.
6. Open `analysis_output.csv` and compare the evidence with the workbook Control sheet.
7. Complete the workbook Evidence sheet and save it without changing the filename.

## Acceptance criteria

- [ ] No invalid or missing reading enters the final mean.
- [ ] Mean, median and IQR match the expected values.
- [ ] All filtering rules are visible in the R script.

## Troubleshooting

- `there is no package called 'readxl'`: the script automatically uses `input-data.csv`; install `readxl` later if Excel import is required.
- `cannot open file`: confirm RStudio's working directory is this exact lab folder.
- `object not found`: run the script from the top so imports and validations occur before analysis.
- Verification fails: inspect the first error, compare column names with Input_Data, and rerun from a clean session.

## Evidence to submit

Completed Excel Evidence sheet, R script, generated output files and the final Console verification message.
