# Lab 1: Your First Reproducible R Script

**Level:** Foundation  
**Mapping:** LO1 · K4 · A2  
**Concepts:** objects, assignment, Source vs Console, comments, help

## Scenario

A training coordinator needs a repeatable summary of course attendance.

## Goal

A saved .R script that creates, summarises and exports attendance data.

## Files in this folder

- `lab-01.R` — completed guided R script
- `verify.R` — repeatable acceptance check
- `lab-workbook.xlsx` — brief, input data, controls and evidence record
- `input-data.csv` — portable fallback if `readxl` is unavailable

## Detailed step-by-step

1. Open the workbook and review the Brief and Input_Data sheets.

2. Create lab-01.R in RStudio and add a header comment with purpose and source.

3. Create the attendance vector and calculate valid count, mean and minimum.

4. Use help('mean') and record the na.rm decision.

5. Export the summary and run verify.R.

## Run and verify

1. Set the RStudio working directory to this lab folder.
2. Open `lab-01.R` and read the header, inputs and validation rules.
3. Run the complete script with `source("lab-01.R")`.
4. Confirm the Console ends with `LAB VERIFIED: outputs created and checks passed`.
5. Run `source("verify.R")` and retain the verification message.
6. Open `analysis_output.csv` and compare the evidence with the workbook Control sheet.
7. Complete the workbook Evidence sheet and save it without changing the filename.

## Acceptance criteria

- [ ] Script runs from a clean R session without manual Console steps.
- [ ] Summary excludes the missing value and reports the expected valid count.
- [ ] Evidence sheet records the output filename and verification result.

## Troubleshooting

- `there is no package called 'readxl'`: the script automatically uses `input-data.csv`; install `readxl` later if Excel import is required.
- `cannot open file`: confirm RStudio's working directory is this exact lab folder.
- `object not found`: run the script from the top so imports and validations occur before analysis.
- Verification fails: inspect the first error, compare column names with Input_Data, and rerun from a clean session.

## Evidence to submit

Completed Excel Evidence sheet, R script, generated output files and the final Console verification message.
