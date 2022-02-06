# Contrast Algorithms for Linear Models

source("http://raw.githubusercontent.com/cwendorf/CALM/main/source-CALM.R")

## Producing Custom Contrast Codes

### Orthogonal Contrasts

GM <- c(1/3,1/3,1/3)
H1 <- c(1,-1/2,-1/2)
H2 <- c(0,1,-1)
ex_custom.orthogonal <- rbind(GM,H1,H2)
calm.encode(ex_custom.orthogonal)

### Nonorthogonal Contrasts

GM <- c(1,0,0)
H1 <- c(1,-1/2,-1/2)
H2 <- c(1,-1,0)
ex_custom.nonorthogonal <- rbind(GM,H1,H2)
calm.encode(ex_custom.nonorthogonal)
