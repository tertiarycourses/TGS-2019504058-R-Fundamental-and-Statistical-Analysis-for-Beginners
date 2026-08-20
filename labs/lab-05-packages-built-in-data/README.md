# Lab 5: Packages and Built-in Datasets

**Level:** Intermediate  
**Mapping:** LO3 · K3 · A2  
**Concepts:** packages, namespaces, documentation, str, summary

## Scenario

A junior analyst must document a reproducible package and dataset setup.

## Goal

A setup script and mtcars/quakes data profile.

## Files in this folder

- `lab-05.R` — completed guided R script
- `verify.R` — repeatable acceptance check
- `lab-workbook.xlsx` — brief, input data, controls and evidence record
- `input-data.csv` — portable fallback if `readxl` is unavailable

## Detailed step-by-step

1. Review package requirements in the workbook.

2. Check for readxl without reinstalling it on every run.

3. Load and document mtcars and quakes.

4. Create a compact data profile with rows, columns, missingness and ranges.

5. Write the profile to CSV and log package versions.

## Run and verify

1. Set the RStudio working directory to this lab folder.
2. Open `lab-05.R` and read the header, inputs and validation rules.
3. Run the complete script with `source("lab-05.R")`.
4. Confirm the Console ends with `LAB VERIFIED: outputs created and checks passed`.
5. Run `source("verify.R")` and retain the verification message.
6. Open `analysis_output.csv` and compare the evidence with the workbook Control sheet.
7. Complete the workbook Evidence sheet and save it without changing the filename.

## Acceptance criteria

- [ ] Script uses requireNamespace() before optional installation.
- [ ] Data profile reports correct dimensions.
- [ ] Package and R versions are recorded.

## Troubleshooting

- `there is no package called 'readxl'`: the script automatically uses `input-data.csv`; install `readxl` later if Excel import is required.
- `cannot open file`: confirm RStudio's working directory is this exact lab folder.
- `object not found`: run the script from the top so imports and validations occur before analysis.
- Verification fails: inspect the first error, compare column names with Input_Data, and rerun from a clean session.

## Evidence to submit

Completed Excel Evidence sheet, R script, generated output files and the final Console verification message.
