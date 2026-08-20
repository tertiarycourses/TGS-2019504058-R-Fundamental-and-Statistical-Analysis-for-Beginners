# Lab 4: Data Structures and Factors

**Level:** Foundation  
**Mapping:** LO2 · K3 · A5 · A9  
**Concepts:** matrix, data frame, list, factor, subsetting

## Scenario

A fleet analyst needs the correct R structure for mixed vehicle records.

## Goal

A typed data frame, a matrix slice and a factor frequency table.

## Files in this folder

- `lab-04.R` — completed guided R script
- `verify.R` — repeatable acceptance check
- `lab-workbook.xlsx` — brief, input data, controls and evidence record
- `input-data.csv` — portable fallback if `readxl` is unavailable

## Detailed step-by-step

1. Import the vehicle table from Excel.

2. Create a numeric matrix for selected measures and extract the specified slice.

3. Create a data frame with numeric and categorical columns.

4. Convert transmission to an ordered factor and produce a frequency table.

5. Bundle data and summaries in a named list.

## Run and verify

1. Set the RStudio working directory to this lab folder.
2. Open `lab-04.R` and read the header, inputs and validation rules.
3. Run the complete script with `source("lab-04.R")`.
4. Confirm the Console ends with `LAB VERIFIED: outputs created and checks passed`.
5. Run `source("verify.R")` and retain the verification message.
6. Open `analysis_output.csv` and compare the evidence with the workbook Control sheet.
7. Complete the workbook Evidence sheet and save it without changing the filename.

## Acceptance criteria

- [ ] Matrix contains only numeric values and has the expected dimensions.
- [ ] Data frame preserves column types.
- [ ] Factor levels and counts are explicit and correct.

## Troubleshooting

- `there is no package called 'readxl'`: the script automatically uses `input-data.csv`; install `readxl` later if Excel import is required.
- `cannot open file`: confirm RStudio's working directory is this exact lab folder.
- `object not found`: run the script from the top so imports and validations occur before analysis.
- Verification fails: inspect the first error, compare column names with Input_Data, and rerun from a clean session.

## Evidence to submit

Completed Excel Evidence sheet, R script, generated output files and the final Console verification message.
