# Lab 7: Base R Chart Selection

**Level:** Intermediate  
**Mapping:** LO4 · K3 · A3 · A4  
**Concepts:** scatter, bar, histogram, labels, interpretation

## Scenario

A transport team needs three views of fuel-economy and transmission data.

## Goal

A scatter plot, bar chart and histogram saved as PNG files.

## Files in this folder

- `lab-07.R` — completed guided R script
- `verify.R` — repeatable acceptance check
- `lab-workbook.xlsx` — brief, input data, controls and evidence record
- `input-data.csv` — portable fallback if `readxl` is unavailable

## Detailed step-by-step

1. Import the workbook's vehicle data.

2. State one question for each required chart.

3. Create a labelled scatter plot of weight versus fuel economy.

4. Create a zero-based bar chart of transmission counts and a histogram of fuel economy.

5. Save the plots and write one evidence-based interpretation per chart.

## Run and verify

1. Set the RStudio working directory to this lab folder.
2. Open `lab-07.R` and read the header, inputs and validation rules.
3. Run the complete script with `source("lab-07.R")`.
4. Confirm the Console ends with `LAB VERIFIED: outputs created and checks passed`.
5. Run `source("verify.R")` and retain the verification message.
6. Open `analysis_output.csv` and compare the evidence with the workbook Control sheet.
7. Complete the workbook Evidence sheet and save it without changing the filename.

## Acceptance criteria

- [ ] Each chart answers a distinct question.
- [ ] Axes, units and categories are readable.
- [ ] Interpretations describe evidence without claiming causation.

## Troubleshooting

- `there is no package called 'readxl'`: the script automatically uses `input-data.csv`; install `readxl` later if Excel import is required.
- `cannot open file`: confirm RStudio's working directory is this exact lab folder.
- `object not found`: run the script from the top so imports and validations occur before analysis.
- Verification fails: inspect the first error, compare column names with Input_Data, and rerun from a clean session.

## Evidence to submit

Completed Excel Evidence sheet, R script, generated output files and the final Console verification message.
