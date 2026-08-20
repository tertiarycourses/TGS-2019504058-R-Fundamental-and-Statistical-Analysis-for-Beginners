# Lab 12: Hypothesis Testing and ANOVA Capstone

**Level:** Advanced  
**Mapping:** LO6 · K5 · A1–A10  
**Concepts:** H0/H1, p-value, t-test, ANOVA, diagnostics, remediation

## Scenario

A health-policy team compares groups and proposes a defensible model update.

## Goal

A t-test, ANOVA, post-hoc comparison and revised analysis decision.

## Files in this folder

- `lab-12.R` — completed guided R script
- `verify.R` — repeatable acceptance check
- `lab-workbook.xlsx` — brief, input data, controls and evidence record
- `input-data.csv` — portable fallback if `readxl` is unavailable

## Detailed step-by-step

1. Write H0, H1 and alpha before running any test.

2. Run the specified two-group t-test and report estimates, interval and p-value.

3. Run one-way ANOVA across three or more groups.

4. If warranted, run TukeyHSD and identify supported pairwise differences.

5. Diagnose one unintended outcome and implement a justified script update.

## Run and verify

1. Set the RStudio working directory to this lab folder.
2. Open `lab-12.R` and read the header, inputs and validation rules.
3. Run the complete script with `source("lab-12.R")`.
4. Confirm the Console ends with `LAB VERIFIED: outputs created and checks passed`.
5. Run `source("verify.R")` and retain the verification message.
6. Open `analysis_output.csv` and compare the evidence with the workbook Control sheet.
7. Complete the workbook Evidence sheet and save it without changing the filename.

## Acceptance criteria

- [ ] Every conclusion uses reject/fail-to-reject language correctly.
- [ ] ANOVA conclusion does not overstate which groups differ.
- [ ] The updated script reruns successfully and the audit note explains the change.

## Troubleshooting

- `there is no package called 'readxl'`: the script automatically uses `input-data.csv`; install `readxl` later if Excel import is required.
- `cannot open file`: confirm RStudio's working directory is this exact lab folder.
- `object not found`: run the script from the top so imports and validations occur before analysis.
- Verification fails: inspect the first error, compare column names with Input_Data, and rerun from a clean session.

## Evidence to submit

Completed Excel Evidence sheet, R script, generated output files and the final Console verification message.
