# Lab 10: Build and Test Reusable Functions

**Level:** Intermediate  
**Mapping:** LO5 · K7 · A7 · A9  
**Concepts:** functions, default arguments, named arguments, ..., set.seed

## Scenario

A game-based learning team needs a reliable two-dice simulator and summary function.

## Goal

Two documented functions with deterministic tests.

## Files in this folder

- `lab-10.R` — completed guided R script
- `verify.R` — repeatable acceptance check
- `lab-workbook.xlsx` — brief, input data, controls and evidence record
- `input-data.csv` — portable fallback if `readxl` is unavailable

## Detailed step-by-step

1. Define roll_dice(n=2, sides=6) with input validation.

2. Use sample() and sum() to return a roll total.

3. Define summarise_rolls(x, ...) and forward options to mean().

4. Set a random seed and run deterministic tests.

5. Record expected and actual results in the workbook.

## Run and verify

1. Set the RStudio working directory to this lab folder.
2. Open `lab-10.R` and read the header, inputs and validation rules.
3. Run the complete script with `source("lab-10.R")`.
4. Confirm the Console ends with `LAB VERIFIED: outputs created and checks passed`.
5. Run `source("verify.R")` and retain the verification message.
6. Open `analysis_output.csv` and compare the evidence with the workbook Control sheet.
7. Complete the workbook Evidence sheet and save it without changing the filename.

## Acceptance criteria

- [ ] Invalid n or sides values stop with clear messages.
- [ ] Default and named argument calls both work.
- [ ] Tests are reproducible under the recorded seed.

## Troubleshooting

- `there is no package called 'readxl'`: the script automatically uses `input-data.csv`; install `readxl` later if Excel import is required.
- `cannot open file`: confirm RStudio's working directory is this exact lab folder.
- `object not found`: run the script from the top so imports and validations occur before analysis.
- Verification fails: inspect the first error, compare column names with Input_Data, and rerun from a clean session.

## Evidence to submit

Completed Excel Evidence sheet, R script, generated output files and the final Console verification message.
