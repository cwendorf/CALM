
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
