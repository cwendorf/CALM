
## Producing Contrast Codes

source("http://raw.githubusercontent.com/cwendorf/CALM/main/source-CALM.R")

### Common Contrast Codes

#### Example: Treatment (First) Contrasts

M1 <- c(1,0,0)
H1 <- c(-1,1,0)
H2 <- c(-1,0,1)
ex_treatment.first <- rbind(M1,H1,H2)
calm.encode(ex_treatment.first)

#### Example: Treatment (Last) Contrasts

M3 <- c(0,0,1)
H1 <- c(1,0,-1)
H2 <- c(0,1,-1)
ex_treatment.last <- rbind(M3,H1,H2)
calm.encode(ex_treatment.last)

#### Example: Control (First) Contrasts

GM <- c(1/3,1/3,1/3)
H1 <- c(-1,1,0)
H2 <- c(-1,0,1)
ex_control.first <- rbind(GM,H1,H2)
calm.encode(ex_control.first)

#### Example: Control (Last) Contrasts

GM <- c(1/3,1/3,1/3)
H1 <- c(1,0,-1)
H2 <- c(0,1,-1)
ex_control.last <- rbind(GM,H1,H2)
calm.encode(ex_control.last)

#### Example: Deviation (First) Contrasts

GM <- c(1/3,1/3,1/3)
H1 <- c(-1/3,2/3,-1/3)
H2 <- c(-1/3,-1/3,2/3)
ex_deviation.first <- rbind(GM,H1,H2)
calm.encode(ex_deviation.first)

#### Example: Deviation (Last) Contrasts

GM <- c(1/3,1/3,1/3)
H1 <- c(2/3,-1/3,-1/3)
H2 <- c(-1/3,2/3,-1/3)
ex_deviation.last <- rbind(GM,H1,H2)
calm.encode(ex_deviation.last)

#### Example: Helmert (Forward) Contrasts

GM <- c(1/3,1/3,1/3)
H1 <- c(1,-1/2,-1/2)
H2 <- c(0,1,-1)
ex_helmert.forward <- rbind(GM,H1,H2)
calm.encode(ex_helmert.forward)

#### Example: Helmert (Reverse) Contrasts

GM <- c(1/3,1/3,1/3)
H1 <- c(-1,1,0)
H2 <- c(-1/2,-1/2,1)
ex_helmert.reverse <- rbind(GM,H1,H2)
calm.encode(ex_helmert.reverse)

#### Example: Repeated (Forward) Contrasts

M1 <- c(1,0,0)
H1 <- c(1,-1,0)
H2 <- c(0,1,-1)
ex_repeated.forward <- rbind(M1,H1,H2)
calm.encode(ex_repeated.forward)

#### Example: Repeated (Reverse) Contrasts

M1 <- c(1,0,0)
H1 <- c(-1,1,0)
H2 <- c(0,-1,1)
ex_repeated.reverse <- rbind(M1,H1,H2)
calm.encode(ex_repeated.reverse)

#### Example: Difference (Forward) Contrasts

GM <- c(1/3,1/3,1/3)
H1 <- c(1,-1,0)
H2 <- c(0,1,-1)
ex_difference.forward <- rbind(GM,H1,H2)
calm.encode(ex_difference.forward)

#### Example: Difference (Reverse) Contrasts

GM <- c(1/3,1/3,1/3)
H1 <- c(-1,1,0)
H2 <- c(0,-1,1)
ex_difference.reverse <- rbind(GM,H1,H2)
calm.encode(ex_difference.reverse)

### Custom Contrast Codes

#### Example: Orthogonal Contrasts

GM <- c(1/3,1/3,1/3)
H1 <- c(1,-1/2,-1/2)
H2 <- c(0,1,-1)
ex_custom.orthogonal <- rbind(GM,H1,H2)
calm.encode(ex_custom.orthogonal)

#### Example: Nonorthogonal Contrasts

GM <- c(1,0,0)
H1 <- c(1,-1/2,-1/2)
H2 <- c(1,-1,0)
ex_custom.nonorthogonal <- rbind(GM,H1,H2)
calm.encode(ex_custom.nonorthogonal)
