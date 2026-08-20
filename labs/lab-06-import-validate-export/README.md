# Lab 6: Import, Validate and Export Weather Data

**Level:** Intermediate  
**Mapping:** LO3 · K6 · A2 · A5 · A9  
**Concepts:** paths, CSV/Excel import, validation, export

## Scenario

A public-environment team needs a defensible May ozone summary.

## Goal

A validated weather dataset and audit-ready summary export.

## Files in this folder

- `lab-06.R` — completed guided R script
- `verify.R` — repeatable acceptance check
- `lab-workbook.xlsx` — brief, input data, controls and evidence record
- `input-data.csv` — portable fallback if `readxl` is unavailable

## Detailed step-by-step

1. Open the workbook and note the data contract.

2. Import Input_Data with readxl using a project-relative path.

3. Validate required columns, month values and numeric ozone type.

4. Filter May records and calculate the average ozone with missing values handled.

5. Export analysis_output.csv and update the Evidence sheet.

## Run and verify

1. Set the RStudio working directory to this lab folder.
2. Open `lab-06.R` and read the header, inputs and validation rules.
3. Run the complete script with `source("lab-06.R")`.
4. Confirm the Console ends with `LAB VERIFIED: outputs created and checks passed`.
5. Run `source("verify.R")` and retain the verification message.
6. Open `analysis_output.csv` and compare the evidence with the workbook Control sheet.
7. Complete the workbook Evidence sheet and save it without changing the filename.

## Acceptance criteria

- [ ] Validation stops the script if a required column is absent.
- [ ] May average uses only non-missing ozone records.
- [ ] Export contains source row count and analysis timestamp.

## Troubleshooting

- `there is no package called 'readxl'`: the script automatically uses `input-data.csv`; install `readxl` later if Excel import is required.
- `cannot open file`: confirm RStudio's working directory is this exact lab folder.
- `object not found`: run the script from the top so imports and validations occur before analysis.
- Verification fails: inspect the first error, compare column names with Input_Data, and rerun from a clean session.

## Evidence to submit

Completed Excel Evidence sheet, R script, generated output files and the final Console verification message.
