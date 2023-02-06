# Nondetects And Data Analysis

Nondetects And Data Analysis online course by Dennis R. Helsel, Practical Stats

https://practicalstats.com/training/nada.php

## Datasets

Data from: https://practicalstats.com/resources/NADA-resources/NADA2-Online-3_9.zip

Use the `dataset_downloads.R` script to download these datasets if needed

## Outline

* Section 1. Get Started with RStudio
* Section 2. Detection and Reporting Limits
* Section 3. Store Censored Data in Databases
* Section 4. Plot Data with Nondetects
* Section 5. Estimating Descriptive Statistics
* Section 6. Intervals (Confidence, Prediction, Tolerance)
* Section 7. Matched Pair Tests & Comparing Data to Standards
* Section 8. Two-Group Tests with Nondetects
* Section 9. Three+ Group Tests with Nondetects
* Section 10. Correlation and Regression with Nondetects
* Section 11. Trend Analysis with Nondetects
* Section 12. Logistic Regression
* Section 13. Multivariate Methods with Nondetects

## Methods for censored data

| Method            | Parametric                   | Non-Parametric           |
|-------------------|------------------------------|--------------------------|
| Descriptive stats | MLE                          | Kaplan-Meier             |
| Intervals         | Bootstrap MLE                | Bootstrap K-M            |
| Paired data       | CI on difference by MLE      | PPW                      |
| 2 indep gropus    | MLE regression on 0/1 factor | Peto-Peto                |
| 3 indep groups    | MLE regression on 0/1 factor | Peto-Peto                |
| Correlation       | Likelihood R by MLE          | Kendall's tau            |
| Regression        | MLE regression               | Akritas-Thiel-Sen line   |
|                   |                              |                          |