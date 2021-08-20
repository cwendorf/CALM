
### Standard Coding Procedures

deviation.first(3)
deviation.first(3,intercept=TRUE)
calm.decode(deviation.first(3))
calm.decode(deviation.first(3,intercept=TRUE))

deviation.last(3)
deviation.last(3,intercept=TRUE)
calm.decode(deviation.last(3))
calm.decode(deviation.last(3,intercept=TRUE))

helmert.forward(3)
helmert.forward(3,intercept=TRUE)
calm.decode(helmert.forward(3))
calm.decode(helmert.forward(3,intercept=TRUE))

helmert.reverse(3)
helmert.reverse(3,intercept=TRUE)
calm.decode(helmert.reverse(3))
calm.decode(helmert.reverse(3,intercept=TRUE))

repeated.forward(3)
repeated.forward(3,intercept=TRUE)
calm.decode(repeated.forward(3))
calm.decode(repeated.forward(3,intercept=TRUE))

repeated.reverse(3)
repeated.reverse(3,intercept=TRUE)
calm.decode(repeated.reverse(3))
calm.decode(repeated.reverse(3,intercept=TRUE))

treatment.first(3)
treatment.first(3,intercept=TRUE)
calm.decode(treatment.first(3))
calm.decode(treatment.first(3,intercept=TRUE))

treatment.last(3)
treatment.last(3,intercept=TRUE)
calm.decode(treatment.last(3))
calm.decode(treatment.last(3,intercept=TRUE))


### Producing Regression Codes from Hypotheses

#### Example: Deviation (Last) Contrasts
GM <- c(1/3,1/3,1/3)
H1 <- c(-1/3,2/3,-1/3)
H2 <- c(-1/3,-1/3,2/3)
ex_deviation.last <- rbind(GM,H1,H2)
calm.encode(ex_deviation.last)

#### Example: Helmert (Forward) Contrasts
GM <- c(1/3,1/3,1/3)
H1 <- c(1,-1/2,-1/2)
H2 <- c(0,1,-1)
ex_helmert.forward <- rbind(GM,H1,H2)
calm.encode(ex_helmert.forward)

#### Example: Repeated (Forward) Contrasts
M1 <- c(1,0,0)
H1 <- c(-1,1,0)
H2 <- c(0,-1,1)
ex_repeated.forward <- rbind(M1,H1,H2)
calm.encode(ex_repeated.forward)

#### Example: Hypothesized Contrasts
GM <- c(1/3,1/3,1/3)
H1 <- c(1,-1/2,-1/2)
H2 <- c(1,-1,0)
ex_custom <- rbind(GM,H1,H2)
calm.encode(ex_custom)


### Extracting Hypotheses from Regression Codes

#### Example: Dummy Coding
ex_dummy = matrix(c(
    1,1,0,
    1,0,1,
    1,0,0),
    ncol=3,
    byrow=TRUE)
calm.decode(ex_dummy)

#### Example: Effect Coding
ex_effect = matrix(c(
    1,1,0,
    1,0,1,
    1,-1,-1),
    ncol=3,
    byrow=TRUE)
calm.decode(ex_effect)

#### Example: Repeated Coding
ex_repeated = matrix(c(
    1,0,0,
    1,1,0,
    1,1,1),
    ncol=3,
    byrow=TRUE)
calm.decode(ex_repeated)
