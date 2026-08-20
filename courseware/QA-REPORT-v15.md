# WSQ Courseware QA Report — v15.0

**Course:** R Fundamental and Statistical Analysis for Beginners  
**Course code:** TGS-2019504058  
**QA date:** 20 August 2026  
**Overall verdict:** PASS

## A. PPT quality audit — PASS

- 150-slide 16:9 deck; v15.0 appears once on the cover and matches the filename.
- Course title, code, organisation, UEN and copyright are present; copyright appears on 150/150 slides.
- General-trainer and named Dr Alfred Ang profile cards are separate visual slides.
- Briefing for Assessment precedes Assessment and Funding.
- Front and closing assessment flows are horizontal numbered diagrams; Digital Attendance appears at the front and end.
- Courseware download is a two-option visual with a real clickable GitHub hyperlink; LMS access and assessment submission are visualised near the end.
- Nine editable native PowerPoint charts are embedded. The remaining slides use cards, tile grids, flows, code panels, section dividers and lab evidence layouts; no bullet-wall instructional slides remain.
- All 150 slides carry a restrained fade transition, while each static slide remains complete without animation.
- Rendered all 150 pages and inspected eight contact sheets plus representative full-size cover, admin, native-chart, lab and closing slides. No overlap, clipping, off-slide objects or placeholder text found after the fix-and-verify cycle.
- No detailed click-by-click lab procedure appears in the deck; all twelve lab slides point learners to the detailed LG/lab PDFs.
- Practice Exam is N/A: this is a skills-based R course with no external certification exam. Current `wsq-slides` rules require omission.

## B. Assessment quality audit — PASS

- Instrument preserved: Written Assessment (SAQ) plus Case Study (CS).
- Counts preserved from the live LMS-TMS papers: 7 WA questions and 6 Case Study tasks.
- Timings preserved: WA 60 minutes; Case Study 80 minutes.
- Zero multiple-choice questions; all items are open-ended.
- Four DOCX files generated: two candidate papers and two trainer answer keys, all at v15.0.
- Candidate page order verified mechanically: page 1 cover; page 2 Trainee Information, full Instructions and Grading; content starts on page 3. No trailing `For Official Use Only` block.
- LMS submission link is present; answer keys omit candidate instructions/grading.
- `verify_assessment.py` result: PASS for all four rendered documents.

### K/A coverage

| Criterion | Assessment item | Course evidence |
|---|---|---|
| K1 | WA Q1 | Topic 6 correlation · Lab 11 |
| K2 | WA Q2 | Topic 6 linear regression/diagnostics · Lab 11 |
| K3 | WA Q3 | Topic 2 vectors/matrices · Labs 3–4 |
| K4 | WA Q4 | Topic 1 help/diagnostics · Lab 2 |
| K5 | WA Q5 | Topic 6 ANOVA · Lab 12 |
| K6 | WA Q6 | Topic 5 next/break · Lab 9 |
| K7 | WA Q7 | Topic 5 functions/arguments · Lab 10 |
| A1 | CS Q1 | Correlation · Lab 11 |
| A2 | CS Q2 | Descriptive statistics · Lab 11 |
| A3–A4 | CS Q3 | Factors, boxplots and group summaries · Labs 4, 7–8 |
| A5–A6 | CS Q4 | ANOVA, decision and post-hoc analysis · Lab 12 |
| A7–A8 | CS Q5 | Conditional transformation and verification · Labs 4 and 9 |
| A9–A10 | CS Q6 | Multiple regression, diagnostics and model update · Labs 11–12 |

## C. Lesson Plan — PASS

- WSQ cover, version-control record and page-numbered TOC are present.
- Two-day schedule explicitly shows 16 hours, breaks, lab delivery and the 15:40–18:00 assessment block.
- Topic and lab slide references are generated from the final 150-slide deck's `slide_map.json`; all twelve labs cite their current slide pairs.
- Final PDF: 8 pages; cover, schedule, topic breakdown, resources and assessment pages visually inspected.

## D. Learner Guide — PASS

- WSQ cover, append-only version-control record and page-numbered TOC are present.
- Final PDF: 24 pages, covering all six topics and twelve detailed labs.
- Every lab begins at Step 1, provides exact paths/run commands, acceptance criteria, evidence and troubleshooting.
- DOCX/PDF only, following the current `wsq-learner-guide` hard rule; no divergent Learner Guide Markdown mirror is retained.

## E. Labs and alignment — PASS

- Exactly 12 self-contained `labs/lab-NN-*` folders.
- Each lab has a completed numbered `.R` script, `verify.R`, `lab-workbook.xlsx`, CSV fallback, detailed `README.md` and same-basename `README.pdf`.
- 12/12 R verification runs passed.
- 12/12 Excel workbooks recalculated with zero formula errors.
- Markdown/PDF parity: 13/13 (root lab index plus twelve lab guides).
- Progressive mapping runs from environment/data foundations through programming, modelling, diagnostics and ANOVA capstone.

## F. Files, versions and distribution — PASS

- One live v15.0 PPTX/PDF, LG DOCX/PDF and LP DOCX/PDF in `courseware/`.
- `.env`, `assessment/`, `reference/`, build sources, QA renders and assets are excluded from the public Git boundary.
- Candidate papers are eligible for LMS links; answer keys are trainer-only and must not be linked or committed.
- Google Drive and LMS-TMS publication require the separate dry-run, write, permission and readback gates recorded by their push commands.

## Mechanical evidence

- Native charts: 9.
- Pictures: 2 (approved logo and generated cover hero).
- Copyright coverage: 150/150 slides.
- Transitions: 150/150 slides.
- Off-slide shapes: 0.
- Assessment structural verifier: 4/4 PASS.
- Lab R verification: 12/12 PASS.
- Workbook formula verification: 12/12 PASS, zero errors.
- Lab Markdown/PDF parity: 13/13.

