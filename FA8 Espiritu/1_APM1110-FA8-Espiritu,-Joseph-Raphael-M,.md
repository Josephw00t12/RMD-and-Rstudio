FA8
================
Espiritu, Joseph Raphael M.
2025-04-30

![](FA8.png)

``` r
library(dplyr)
```

    ## Warning: package 'dplyr' was built under R version 4.4.3

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
mu <- 200
sigma <- sqrt(256)

# (a) P(X > 224)
1 - pnorm(224, mean = mu, sd = sigma)
```

    ## [1] 0.0668072

``` r
cat("Interpretation: There is approximately a 6.68% chance that the analogue signal will exceed 224 microvolts.
    This is computed from the right tail of the normal distribution.")
```

    ## Interpretation: There is approximately a 6.68% chance that the analogue signal will exceed 224 microvolts.
    ##     This is computed from the right tail of the normal distribution.

``` r
# (b) P(186 < X < 224)
pnorm(224, mean = mu, sd = sigma) - pnorm(186, mean = mu, sd = sigma)
```

    ## [1] 0.7424058

``` r
cat("Interpretation: About 74.24% of the signals fall between 186 and 224 microvolts.
    This represents the probability that the signal lies within that range, which is fairly high, showing the signal values are concentrated around the mean.")
```

    ## Interpretation: About 74.24% of the signals fall between 186 and 224 microvolts.
    ##     This represents the probability that the signal lies within that range, which is fairly high, showing the signal values are concentrated around the mean.

``` r
# (c) Microvoltage below which 25% of the signals will be
qnorm(0.25, mean = mu, sd = sigma)
```

    ## [1] 189.2082

``` r
cat("Interpretation: 25% of all signal values are less than approximately 189.21 microvolts.
    This is the 1st quartile (Q1) or the 25th percentile of the normal distribution.")
```

    ## Interpretation: 25% of all signal values are less than approximately 189.21 microvolts.
    ##     This is the 1st quartile (Q1) or the 25th percentile of the normal distribution.

``` r
# (d) P(X < 240 | X > 210) = [P(210 < X < 240)] / [P(X > 210)]
(pnorm(240, mean = mu, sd = sigma) - pnorm(210, mean = mu, sd = sigma)) / 
  (1 - pnorm(210, mean = mu, sd = sigma))
```

    ## [1] 0.9766541

``` r
cat("Interpretation: Given that the signal is already known to be more than 210 μV, there is a 97.67% chance it is less than 240 μV.
    This is a conditional probability and shows that 240 μV is well into the upper tail, but not too far.")
```

    ## Interpretation: Given that the signal is already known to be more than 210 μV, there is a 97.67% chance it is less than 240 μV.
    ##     This is a conditional probability and shows that 240 μV is well into the upper tail, but not too far.

``` r
# (e) Estimate Interquartile Range (IQR)
Q3 <- qnorm(0.75, mean = mu, sd = sigma)
Q1 <- qnorm(0.25, mean = mu, sd = sigma)
IQR <- Q3 - Q1
IQR
```

    ## [1] 21.58367

``` r
cat("Interpretation: The interquartile range (IQR) is the range between the 75th percentile (Q3 = ~210.79) and the 25th percentile (Q1 = ~189.21).
    IQR represents the spread of the middle 50% of the data, and here it shows that most signal values are concentrated within a range of about 21.58 μV.")
```

    ## Interpretation: The interquartile range (IQR) is the range between the 75th percentile (Q3 = ~210.79) and the 25th percentile (Q1 = ~189.21).
    ##     IQR represents the spread of the middle 50% of the data, and here it shows that most signal values are concentrated within a range of about 21.58 μV.

``` r
# (f) P(X < 220 | X > 210)
(pnorm(220, mean = mu, sd = sigma) - pnorm(210, mean = mu, sd = sigma)) / 
  (1 - pnorm(210, mean = mu, sd = sigma))
```

    ## [1] 0.6027988

``` r
cat("Interpretation: Given that the signal is greater than 210 μV, there is a 60.28% chance it is less than 220 μV.
    This again is a conditional probability, indicating that even among high signal values, most are below 220 μV.")
```

    ## Interpretation: Given that the signal is greater than 210 μV, there is a 60.28% chance it is less than 220 μV.
    ##     This again is a conditional probability, indicating that even among high signal values, most are below 220 μV.

``` r
# (g) P(X > 220 | X > 200)
(1 - pnorm(220, mean = mu, sd = sigma)) / 
  (1 - pnorm(200, mean = mu, sd = sigma))
```

    ## [1] 0.2112995

``` r
cat("Interpretation: If we already know that a signal is greater than 200 μV, then there's only a 21.13% chance it is greater than 220 μV.
   This shows how unlikely it is for signals to go significantly above the mean (200 μV), given how fast the normal distribution drops off.")
```

    ## Interpretation: If we already know that a signal is greater than 200 μV, then there's only a 21.13% chance it is greater than 220 μV.
    ##    This shows how unlikely it is for signals to go significantly above the mean (200 μV), given how fast the normal distribution drops off.

``` r
mu2 <- 25
sigma2 <- sqrt(144)

# (a) 95% bounds: mean ± 1.96 * sd
lower_bound <- mu2 - 1.96 * sigma2
upper_bound <- mu2 + 1.96 * sigma2
c(lower_bound, upper_bound)
```

    ## [1]  1.48 48.52

``` r
cat("Interpretation: 95% of customer downtimes are expected to fall between 1.48 minutes and 48.52 minutes.
    This interval is computed using the formula for a 95% confidence interval around the mean of a normal distribution: mean± 1.96 × standard deviation
    It gives a sense of the typical range of system downtimes most customers experienced.")
```

    ## Interpretation: 95% of customer downtimes are expected to fall between 1.48 minutes and 48.52 minutes.
    ##     This interval is computed using the formula for a 95% confidence interval around the mean of a normal distribution: mean± 1.96 × standard deviation
    ##     It gives a sense of the typical range of system downtimes most customers experienced.

``` r
# (b) Bound above which 10% of downtime occurs (90th percentile)
qnorm(0.90, mean = mu2, sd = sigma2)
```

    ## [1] 40.37862

``` r
cat("Interpretation: Only 10% of customer downtimes are expected to be greater than approximately 40.38 minutes.
    This is calculated as the 90th percentile of the normal distribution with mean = 25 and standard deviation = 12.
    This means that 90% of customers had downtimes shorter than 40.38 minutes.")
```

    ## Interpretation: Only 10% of customer downtimes are expected to be greater than approximately 40.38 minutes.
    ##     This is calculated as the 90th percentile of the normal distribution with mean = 25 and standard deviation = 12.
    ##     This means that 90% of customers had downtimes shorter than 40.38 minutes.
