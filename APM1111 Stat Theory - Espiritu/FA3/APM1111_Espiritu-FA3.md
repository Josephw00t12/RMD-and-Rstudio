FA3
================
Espiritu, Joseph Raphael M.
2025-09-18



``` r
# Required libraries
library(moments)
library(knitr)
library(kableExtra)

# Data
Score <- c(
  88,45,53,86,33,86,85,30,89,53,41,96,56,38,62,
  71,51,86,68,29,28,47,33,37,25,36,33,94,73,46,
  42,34,79,72,88,99,82,62,57,42,28,55,67,62,60,
  96,61,57,75,93,34,75,53,32,28,73,51,69,91,35
)

# Descriptive statistics
n <- length(Score)
mode_val <- as.numeric(names(sort(table(Score), decreasing = TRUE)[1]))
median_val <- median(Score)
mean_val <- mean(Score)
std_dev <- sd(Score)
variance_val <- var(Score)
skewness_val <- skewness(Score)
stderr_skew <- sqrt(6/n)
kurtosis_val <- kurtosis(Score) - 3
stderr_kurt <- sqrt(24/n)
minimum <- min(Score)
maximum <- max(Score)

# Percentiles
q25 <- quantile(Score, 0.25)
q50 <- quantile(Score, 0.50)
q75 <- quantile(Score, 0.75)
p90 <- quantile(Score, 0.90)
p95 <- quantile(Score, 0.95)

# Table
results <- data.frame(
  Score = c(
    n,
    mode_val,
    median_val,
    round(mean_val, 3),
    round(std_dev, 3),
    round(variance_val, 3),
    round(skewness_val, 3),
    round(stderr_skew, 3),
    round(kurtosis_val, 3),
    round(stderr_kurt, 3),
    minimum,
    maximum,
    round(q25, 3),
    round(q50, 3),
    round(q75, 3),
    round(p90, 3),
    round(p95, 3)
  )
)

rownames(results) <- c(
  "Valid",
  "Mode",
  "Median",
  "Mean",
  "Std. Deviation",
  "Variance",
  "Skewness",
  "Std. Error of Skewness",
  "Kurtosis",
  "Std. Error of Kurtosis",
  "Minimum",
  "Maximum",
  "25th percentile",
  "50th percentile",
  "75th percentile",
  "90th percentile",
  "95th percentile"
)

# Rendering
if (knitr::is_latex_output()) {
  # PDF
  kable(results, format = "latex", booktabs = TRUE,
        caption = "Descriptive Statistics", align = c("l","c")) %>%
    kable_styling(latex_options = c("hold_position"),
                  font_size = 11, position = "center") %>%
    row_spec(0, bold = TRUE, background = "#E8E8E8") %>%
    footnote(general = "More than one mode exists, only the first is reported",
             general_title = "",
             threeparttable = TRUE)

} else if (knitr::is_html_output()) {
  # HTML
  kable(results, format = "html", align = c("l","c"),
        caption = "Descriptive Statistics") %>%
    kable_styling(bootstrap_options = c("striped", "bordered"),
                  full_width = FALSE, position = "center",
                  font_size = 12) %>%
    row_spec(0, bold = TRUE, background = "#E8E8E8") %>%
    footnote(general = "More than one mode exists, only the first is reported",
             general_title = "",
             threeparttable = TRUE)

} else {
  # GitHub
  kable(results, format = "pipe", align = c("l","c"),
        caption = "Descriptive Statistics")
}
```

<table class="table table-striped table-bordered" style="font-size: 12px; color: black; width: auto !important; margin-left: auto; margin-right: auto;border-bottom: 0;">
<caption style="font-size: initial !important;">
Descriptive Statistics
</caption>
<thead>
<tr>
<th style="text-align:left;font-weight: bold;background-color: rgba(232, 232, 232, 255) !important;">
</th>
<th style="text-align:left;font-weight: bold;background-color: rgba(232, 232, 232, 255) !important;">
Score
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Valid
</td>
<td style="text-align:left;">
60.000
</td>
</tr>
<tr>
<td style="text-align:left;">
Mode
</td>
<td style="text-align:left;">
28.000
</td>
</tr>
<tr>
<td style="text-align:left;">
Median
</td>
<td style="text-align:left;">
57.000
</td>
</tr>
<tr>
<td style="text-align:left;">
Mean
</td>
<td style="text-align:left;">
59.167
</td>
</tr>
<tr>
<td style="text-align:left;">
Std. Deviation
</td>
<td style="text-align:left;">
22.211
</td>
</tr>
<tr>
<td style="text-align:left;">
Variance
</td>
<td style="text-align:left;">
493.328
</td>
</tr>
<tr>
<td style="text-align:left;">
Skewness
</td>
<td style="text-align:left;">
0.163
</td>
</tr>
<tr>
<td style="text-align:left;">
Std. Error of Skewness
</td>
<td style="text-align:left;">
0.316
</td>
</tr>
<tr>
<td style="text-align:left;">
Kurtosis
</td>
<td style="text-align:left;">
-1.241
</td>
</tr>
<tr>
<td style="text-align:left;">
Std. Error of Kurtosis
</td>
<td style="text-align:left;">
0.632
</td>
</tr>
<tr>
<td style="text-align:left;">
Minimum
</td>
<td style="text-align:left;">
25.000
</td>
</tr>
<tr>
<td style="text-align:left;">
Maximum
</td>
<td style="text-align:left;">
99.000
</td>
</tr>
<tr>
<td style="text-align:left;">
25th percentile
</td>
<td style="text-align:left;">
37.750
</td>
</tr>
<tr>
<td style="text-align:left;">
50th percentile
</td>
<td style="text-align:left;">
57.000
</td>
</tr>
<tr>
<td style="text-align:left;">
75th percentile
</td>
<td style="text-align:left;">
76.000
</td>
</tr>
<tr>
<td style="text-align:left;">
90th percentile
</td>
<td style="text-align:left;">
89.200
</td>
</tr>
<tr>
<td style="text-align:left;">
95th percentile
</td>
<td style="text-align:left;">
94.100
</td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="padding: 0; " colspan="100%">
<sup></sup> More than one mode exists, only the first is reported
</td>
</tr>
</tfoot>
</table>
