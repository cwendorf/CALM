# Contrast Algorithms for Linear Models

source("http://raw.githubusercontent.com/cwendorf/CALM/main/source-CALM.R")

## Producing Common Contrast Codes

### Treatment (First) Contrasts

M1 <- c(1, 0, 0)
H1 <- c(-1, 1, 0)
H2 <- c(-1, 0, 1)
ex_treatment.first <- rbind(M1, H1, H2)
calm.encode(ex_treatment.first)

### Treatment (Last) Contrasts

M3 <- c(0, 0, 1)
H1 <- c(1, 0, -1)
H2 <- c(0, 1, -1)
ex_treatment.last <- rbind(M3, H1, H2)
calm.encode(ex_treatment.last)

### Control (First) Contrasts

GM <- c(1/3, 1/3, 1/3)
H1 <- c(-1, 1, 0)
H2 <- c(-1, 0, 1)
ex_control.first <- rbind(GM, H1, H2)
calm.encode(ex_control.first)

### Control (Last) Contrasts

GM <- c(1/3, 1/3, 1/3)
H1 <- c(1, 0, -1)
H2 <- c(0, 1, -1)
ex_control.last <- rbind(GM, H1, H2)
calm.encode(ex_control.last)

### Deviation (First) Contrasts

GM <- c(1/3, 1/3, 1/3)
H1 <- c(-1/3, 2/3, -1/3)
H2 <- c(-1/3, -1/3, 2/3)
ex_deviation.first <- rbind(GM, H1, H2)
calm.encode(ex_deviation.first)

### Deviation (Last) Contrasts

GM <- c(1/3, 1/3, 1/3)
H1 <- c(2/3, -1/3, -1/3)
H2 <- c(-1/3, 2/3, -1/3)
ex_deviation.last <- rbind(GM, H1, H2)
calm.encode(ex_deviation.last)

### Helmert (Forward) Contrasts

GM <- c(1/3, 1/3, 1/3)
H1 <- c(1, -1/2, -1/2)
H2 <- c(0, 1, -1)
ex_helmert.forward <- rbind(GM, H1, H2)
calm.encode(ex_helmert.forward)

### Helmert (Reverse) Contrasts

GM <- c(1/3, 1/3, 1/3)
H1 <- c(-1, 1, 0)
H2 <- c(-1/2, -1/2, 1)
ex_helmert.reverse <- rbind(GM, H1, H2)
calm.encode(ex_helmert.reverse)

### Repeated (Forward) Contrasts

M1 <- c(1, 0, 0)
H1 <- c(1, -1, 0)
H2 <- c(0, 1, -1)
ex_repeated.forward <- rbind(M1, H1, H2)
calm.encode(ex_repeated.forward)

### Repeated (Reverse) Contrasts

M1 <- c(1, 0, 0)
H1 <- c(-1, 1, 0)
H2 <- c(0, -1, 1)
ex_repeated.reverse <- rbind(M1, H1, H2)
calm.encode(ex_repeated.reverse)

### Difference (Forward) Contrasts

GM <- c(1/3, 1/3, 1/3)
H1 <- c(1, -1, 0)
H2 <- c(0, 1, -1)
ex_difference.forward <- rbind(GM, H1, H2)
calm.encode(ex_difference.forward)

### Difference (Reverse) Contrasts

GM <- c(1/3, 1/3, 1/3)
H1 <- c(-1, 1, 0)
H2 <- c(0, -1, 1)
ex_difference.reverse <- rbind(GM, H1, H2)
calm.encode(ex_difference.reverse)
