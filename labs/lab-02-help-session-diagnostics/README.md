# Lab 2: Help, Objects and Session Diagnostics

**Level:** Foundation  
**Mapping:** LO1 · K4 · A2  
**Concepts:** help, args, str, class, sessionInfo

## Scenario

A colleague's script fails because an object and function call are misunderstood.

## Goal

A diagnostic R script and evidence log explaining the root cause.

## Files in this folder

- `lab-02.R` — completed guided R script
- `verify.R` — repeatable acceptance check
- `lab-workbook.xlsx` — brief, input data, controls and evidence record
- `input-data.csv` — portable fallback if `readxl` is unavailable

## Detailed step-by-step

1. Inspect the workbook's Issue_Log sheet.

2. Use help(), args(), str() and class() on the named objects.

3. Capture sessionInfo() and the active working directory.

4. Correct the failing expression and rerun it.

5. Record diagnosis and evidence in the workbook.

## Run and verify

1. Set the RStudio working directory to this lab folder.
2. Open `lab-02.R` and read the header, inputs and validation rules.
3. Run the complete script with `source("lab-02.R")`.
4. Confirm the Console ends with `LAB VERIFIED: outputs created and checks passed`.
5. Run `source("verify.R")` and retain the verification message.
6. Open `analysis_output.csv` and compare the evidence with the workbook Control sheet.
7. Complete the workbook Evidence sheet and save it without changing the filename.

## Acceptance criteria

- [ ] Diagnostics identify the missing argument or wrong object type.
- [ ] Corrected expression returns the expected value.
- [ ] Session information is captured for reproducibility.

## Troubleshooting

- `there is no package called 'readxl'`: the script automatically uses `input-data.csv`; install `readxl` later if Excel import is required.
- `cannot open file`: confirm RStudio's working directory is this exact lab folder.
- `object not found`: run the script from the top so imports and validations occur before analysis.
- Verification fails: inspect the first error, compare column names with Input_Data, and rerun from a clean session.

## Evidence to submit

Completed Excel Evidence sheet, R script, generated output files and the final Console verification message.
