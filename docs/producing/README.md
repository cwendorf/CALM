## Examples from ITNS

### Overview of the Examples

Data and summary statistics for these examples are from the *[Introduction to the New Statistics](https://thenewstatistics.com/itns/ "Introduction to the New Statistics")* (*ITNS*; Cumming & Calin-Jageman, 2017).

> NOTE: The results of these analyses vary slightly from those presented in *ITNS* because the two make different statistical assumptions (e.g, heterogeneity of variance vs. pooled error terms, etc.).

### Examples of Means and Mean Differences

The **PenLaptop** files analyze an example of a two-group between-subjects (independent-groups) design (see Ch. 7):

- [*PenLaptopDataExample*](./PenLaptopDataExample.md) uses raw data input.
- [*PenLaptopSummaryExample*](./PenLaptopSummaryExample.md) uses summary statistics input.

The **Thomason** files analyze an example of a within-subjects design for two time points (paired samples, see Ch. 8):

- [*ThomasonDataExample*](./ThomasonDataExample.md) uses raw data input.
- [*ThomasonSummaryExample*](./ThomasonSummaryExample.md) uses summary statistics input.

The **Rattan** files analyze an example of a single-factor between-subjects design (see Ch. 14):

- [*RattanDataExample*](./RattanDataExample.md) uses raw data input.
- [*RattanSummaryExample*](./RattanSummaryExample.md) uses summary statistics input.

The **Donohue** files analyze an example of a single-factor within-subjects design (see Ch. 14):

- [*DonohueDataExample*](./DonohueDataExample.md) uses raw data input.
- [*DonohueSummaryExample*](./DonohueSummaryExample.md) uses summary statistics input.

The **Frenda** files analyze an example of a two-factor between-subjects design (see Ch. 15):

- [*FrendaSummaryExample*](./FrendaSummaryExample.md) uses summary statistics input.

The **Holzel** files analyze an example of a two-factor mixed design (one between-subjects and one within-subjects factor) (see Ch. 15):

- [*HolzelDataExample*](./HolzelDataExample.md) uses raw data input.
- [*HolzelSummaryExample*](./HolzelSummaryExample.md) uses summary statistics input.

### Examples of Correlations and Correlation Differences

The **BodyWellOne** files analyze an example of a correlation in a single sample (see Ch. 11):

- [*BodyWellOneDataExample*](./BodyWellOneDataExample.md) uses raw data input.
- [*BodyWellOneSummaryExample*](./BodyWellOneSummaryExample.md) uses summary statistics input.

The **BodyWellTwo** files analyze an example of a correlation in two samples (see Ch. 11):

- [*BodyWellTwoDataExample*](./BodyWellTwoDataExample.md) uses raw data input.
- [*BodyWellTwoSummaryExample*](./BodyWellTwoSummaryExample.md) uses summary statistics input.

### Examples of Regression and Regression Coefficients

The **BodyWellRegression** files analyze an example of regression in a single sample (see Ch. 12):

- [*BodyWellRegressionDataExample*](./BodyWellRegressionDataExample.md) uses raw data input.
- [*BodyWellRegressionSummaryExample*](./BodyWellRegressionSummaryExample.md) uses summary statistics input.

### References

Cumming, G. & Calin-Jageman, R. (2017). *Introduction to the new statistics.* Routledge.




## Producing Regression Codes from Hypotheses

### Example: Deviation (Last) Contrasts

GM <- c(1/3,1/3,1/3)
H1 <- c(-1/3,2/3,-1/3)
H2 <- c(-1/3,-1/3,2/3)
ex_deviation.last <- rbind(GM,H1,H2)
calm.encode(ex_deviation.last)

### Example: Helmert (Forward) Contrasts

GM <- c(1/3,1/3,1/3)
H1 <- c(1,-1/2,-1/2)
H2 <- c(0,1,-1)
ex_helmert.forward <- rbind(GM,H1,H2)
calm.encode(ex_helmert.forward)

### Example: Repeated (Forward) Contrasts

M1 <- c(1,0,0)
H1 <- c(-1,1,0)
H2 <- c(0,-1,1)
ex_repeated.forward <- rbind(M1,H1,H2)
calm.encode(ex_repeated.forward)

### Example: Repeated (Reverse) Contrasts

M1 <- c(0,0,1)
H1 <- c(0,1,-1)
H2 <- c(1,-1,0)
ex_repeated.reverse <- rbind(M1,H1,H2)
calm.encode(ex_repeated.reverse)

### Example: Hypothesized Contrasts

GM <- c(1/3,1/3,1/3)
H1 <- c(1,-1/2,-1/2)
H2 <- c(1,-1,0)
ex_custom <- rbind(GM,H1,H2)
calm.encode(ex_custom)
