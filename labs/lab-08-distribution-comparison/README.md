# Lab 8: Compare Distributions with Boxplots

**Level:** Intermediate  
**Mapping:** LO4 · K5 · A3 · A4 · A7 · A10  
**Concepts:** boxplot, quartiles, outliers, group comparison

## Scenario

An agriculture team compares chick weights across feed groups.

## Goal

A grouped boxplot, descriptive table and visual interpretation.

## Files in this folder

- `lab-08.R` — completed guided R script
- `verify.R` — repeatable acceptance check
- `lab-workbook.xlsx` — brief, input data, controls and evidence record
- `input-data.csv` — portable fallback if `readxl` is unavailable

## Detailed step-by-step

1. Import the feed dataset from the workbook.

2. Confirm feed is a factor and count observations per group.

3. Create a grouped boxplot with readable labels.

4. Calculate median and IQR for every feed.

5. Identify one unusual group and document the evidence.

## Run and verify

1. Set the RStudio working directory to this lab folder.
2. Open `lab-08.R` and read the header, inputs and validation rules.
3. Run the complete script with `source("lab-08.R")`.
4. Confirm the Console ends with `LAB VERIFIED: outputs created and checks passed`.
5. Run `source("verify.R")` and retain the verification message.
6. Open `analysis_output.csv` and compare the evidence with the workbook Control sheet.
7. Complete the workbook Evidence sheet and save it without changing the filename.

## Acceptance criteria

- [ ] Boxplot includes every feed group.
- [ ] Summary table agrees with the plotted medians and spread.
- [ ] Interpretation distinguishes observation from causal claim.

## Troubleshooting

- `there is no package called 'readxl'`: the script automatically uses `input-data.csv`; install `readxl` later if Excel import is required.
- `cannot open file`: confirm RStudio's working directory is this exact lab folder.
- `object not found`: run the script from the top so imports and validations occur before analysis.
- Verification fails: inspect the first error, compare column names with Input_Data, and rerun from a clean session.

## Evidence to submit

Completed Excel Evidence sheet, R script, generated output files and the final Console verification message.
