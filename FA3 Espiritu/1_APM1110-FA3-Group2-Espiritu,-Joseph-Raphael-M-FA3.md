---
title: "FA-3 R 7.1"
author: "Espiritu, Joseph Raphael M."
date: "2025-02-17"
output:
  html_document:
    keep_md: true
  word_document: default
  rmarkdown: github_document
  pdf_document: default
---

---

## Problem Statement 1:

A **binary communication channel** carries data as one of two sets of signals, denoted by \( 0 \) and \( 1 \). Due to **noise**, a transmitted \( 0 \) is sometimes received as a \( 1 \), and a transmitted \( 1 \) is sometimes received as a \( 0 \).

For a specific channel, the probabilities are as follows:

- A transmitted \( 0 \) is **correctly received** with probability **0.95**.
- A transmitted \( 1 \) is **correctly received** with probability **0.75**.
- **70%** of all messages are transmitted as \( 0 \).

### Questions:

(a) Determine the probability that a **1 was received**, i.e., \( P(R=1) \).

(b) Determine the probability that a **1 was transmitted given that a 1 was received**, i.e., \( P(T=1 | R=1) \).

### Solution

Using **law of total probability**, the probability of receiving \( 1 \) is:

\[
P(R=1) = P(R=1 | T=0) P(T=0) + P(R=1 | T=1) P(T=1)
\]

Using **Bayes' theorem**, the probability that a \( 1 \) was transmitted given that a \( 1 \) was received is:

\[
P(T=1 | R=1) = \frac{P(R=1 | T=1) P(T=1)}{P(R=1)}
\]

Using **R** we solve for the two problems:.

---


``` r
# Given probabilities
P_T0 <- 0.70   # Probability of transmitting 0
P_T1 <- 0.30   # Probability of transmitting 1

P_R1_given_T0 <- 0.05  # Probability of receiving 1 given 0 was sent
P_R1_given_T1 <- 0.75  # Probability of receiving 1 given 1 was sent

# Compute P(R=1)
P_R1 <- P_R1_given_T0 * P_T0 + P_R1_given_T1 * P_T1

#values
P_R1_given_T0 # 0.05
```

```
## [1] 0.05
```

``` r
P_R1_given_T1 # 0.75
```

```
## [1] 0.75
```

``` r
P_R1          # receiving 1
```

```
## [1] 0.26
```

``` r
# Compute P(T=1 | R=1)
P_T1_given_R1 <- (P_R1_given_T1 * P_T1) / P_R1

# Show all computed values
P_T1_given_R1 # Final probability that 1 was transmitted given 1 was received
```

```
## [1] 0.8653846
```

---

## Problem Statement 2:
In an **IT company**, three employees—**Jane, Amy, and Ava**—are responsible for programming. The proportion of work done by each and their respective error rates are given below:

- **Jane** does **10%** of the programming, with an **8%** error rate.
- **Amy** does **30%** of the programming, with a **5%** error rate.
- **Ava** does **60%** of the programming, with a **1%** error rate.

### Questions:

(a) What is the **overall probability of an error** occurring?  
(b)  If a program is found with an error, **who is the most likely person to have written it**? 

### Solution

The overall probability of an **error occurring** can be calculated using the **law of total probability**:

\[
P(E) = P(E | J) P(J) + P(E | A) P(A) + P(E | V) P(V)
\]

where:

- \( P(E) \) = Probability that a program contains an error.
- \( P(E | J) \) = Probability of an error given Jane wrote the program.
- \( P(E | A) \) = Probability of an error given Amy wrote the program.
- \( P(E | V) \) = Probability of an error given Ava wrote the program.
- \( P(J), P(A), P(V) \) = Probability that Jane, Amy, or Ava wrote the program, respectively.

Using **Bayes' Theorem**, the probability that **a specific programmer wrote a faulty program** is:

\[
P(J | E) = \frac{P(E | J) P(J)}{P(E)}
\]

\[
P(A | E) = \frac{P(E | A) P(A)}{P(E)}
\]

\[
P(V | E) = \frac{P(E | V) P(V)}{P(E)}
\]

These values will determine **who is most likely person** for an error.

---


``` r
# Given probabilities
P_J <- 0.10  # Probability of Jane writing a program
P_A <- 0.30  # Probability of Amy writing a program
P_V <- 0.60  # Probability of Ava writing a program

P_E_given_J <- 0.08  # Error probability given Jane wrote it
P_E_given_A <- 0.05  # Error probability given Amy wrote it
P_E_given_V <- 0.01  # Error probability given Ava wrote it

#overall probability of error P(E)
P_E <- (P_E_given_J * P_J) + (P_E_given_A * P_A) + (P_E_given_V * P_V)

# Bayes' theorem
P_J_given_E <- (P_E_given_J * P_J) / P_E
P_A_given_E <- (P_E_given_A * P_A) / P_E
P_V_given_E <- (P_E_given_V * P_V) / P_E

# Display
P_E  # Overall probability of an error
```

```
## [1] 0.029
```

``` r
P_J_given_E  # Probability Jane wrote a faulty program
```

```
## [1] 0.2758621
```

``` r
P_A_given_E  # Probability Amy wrote a faulty program
```

```
## [1] 0.5172414
```

``` r
P_V_given_E  # Probability Ava wrote a faulty program
```

```
## [1] 0.2068966
```

---

The values have show that the **most likely person is Amy** at over 50% of  the error probably been written by her.

---
