# Nondetects And Data Analysis

Nondetects And Data Analysis online course by Dennis R. Helsel, Practical Stats

https://practicalstats.com/training/nada.php

## Datasets

Data from: https://practicalstats.com/resources/NADA-resources/NADA2-Online-3_9.zip

Use the `datasets_download.R` script to download the handouts and datasets (if needed)

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

| Method            | Parametric                    | Non-Parametric               |
|-------------------|-------------------------------|------------------------------|
| Descriptive stats | MLE ROS                       | Kaplan-Meier ROS             |
| Intervals         | Bootstrap MLE                 | Bootstrap K-M                |
| Paired data       | CI on difference by MLE       | PPW                          |
| 2 indep gropus    | MLE regression on 0/1 factor  | Peto-Peto                    |
| 3 indep groups    | MLE regression on 0/1 factor  | Peto-Peto                    |
| Correlation       | Likelihood R by MLE           | Kendall's tau                |
| Regression        | MLE regression                | Akritas-Thiel-Sen line       |
| MV methods        | MV MLE methods not considered | use 0/1, ranks and u-scores  |


## A flowchart for computation of UCL/EPC for data with non-detects

This is from the last page of the solutions handout 

**At least 20 observations?**
* No - Assume  best fitting UCL and go to step 2
* Yes - Use bootstrap (nonparametric estimation) and go to step 3

**Distributional methods**
* `NADA2::cboxplot()`. look at outliers - check if data issue, otherwise keep
* decide on which distribution best fits dataset using lowest BIC and QQplots. `NADA2::cenCompareQQ()` or `NADA2::cenCompareCdfs()`
* use best fit distribution to compute UCL `EnvStats::enormCensored()`, `EnvStats::elnormAltCensored()` or `EnvStats::egammaAltCensored()`

**Nonparametric methods**
* if multiple DL, use KM estimate to compute UCL95 using BCA for UCL95 for <= 40% ND and percentile for > 40% ND using `EnvStats::enparCensored()`
* in only one DL use bootstrap lognormal ROS `EnvStats::elnormAltCensored()`