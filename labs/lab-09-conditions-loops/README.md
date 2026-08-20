# Lab 9: Conditions, Loops, next and break

**Level:** Intermediate  
**Mapping:** LO5 · K6 · A7 · A9  
**Concepts:** if/else, for, while, next, break, logical operators

## Scenario

A quality team scans daily temperatures and handles invalid records.

## Goal

A controlled processing loop with an exception log.

## Files in this folder

- `lab-09.R` — completed guided R script
- `verify.R` — repeatable acceptance check
- `lab-workbook.xlsx` — brief, input data, controls and evidence record
- `input-data.csv` — portable fallback if `readxl` is unavailable

## Detailed step-by-step

1. Import daily readings from Excel.

2. Use a for loop to count valid days above the threshold.

3. Use next for missing readings and record them.

4. Use break only when the safety-stop value appears.

5. Compare the loop result with a vectorised validation check.

## Run and verify

1. Set the RStudio working directory to this lab folder.
2. Open `lab-09.R` and read the header, inputs and validation rules.
3. Run the complete script with `source("lab-09.R")`.
4. Confirm the Console ends with `LAB VERIFIED: outputs created and checks passed`.
5. Run `source("verify.R")` and retain the verification message.
6. Open `analysis_output.csv` and compare the evidence with the workbook Control sheet.
7. Complete the workbook Evidence sheet and save it without changing the filename.

## Acceptance criteria

- [ ] Missing values are skipped and counted.
- [ ] Safety stop is explicit and testable.
- [ ] Loop and vectorised count agree before the stop point.

## Troubleshooting

- `there is no package called 'readxl'`: the script automatically uses `input-data.csv`; install `readxl` later if Excel import is required.
- `cannot open file`: confirm RStudio's working directory is this exact lab folder.
- `object not found`: run the script from the top so imports and validations occur before analysis.
- Verification fails: inspect the first error, compare column names with Input_Data, and rerun from a clean session.

## Evidence to submit

Completed Excel Evidence sheet, R script, generated output files and the final Console verification message.
