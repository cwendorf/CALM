# Contrast Algorithms for Linear Models

source("http://raw.githubusercontent.com/cwendorf/CALM/main/source-CALM.R")

## Using Custom Contrast Codes

### The Data

mtcars
mtcars$cyl <- factor(mtcars$cyl) 
tapply(mtcars$mpg,mtcars$cyl,mean)

### Orthogonal Contrasts

GM <- c(1/3,1/3,1/3)
H1 <- c(1,-1/2,-1/2)
H2 <- c(0,1,-1)
ex_custom.orthogonal <- rbind(GM,H1,H2)
custom.orthogonal <- calm.encode(ex_custom.orthogonal)
custom.orthogonal

contrasts(mtcars$cyl) = custom.orthogonal[,-1]
summary(lm(mpg~cyl,data=mtcars))$coefficients

### Nonorthogonal Contrasts

GM <- c(1,0,0)
H1 <- c(1,-1/2,-1/2)
H2 <- c(1,-1,0)
ex_custom.nonorthogonal <- rbind(GM,H1,H2)
custom.nonorthogonal <- calm.encode(ex_custom.nonorthogonal)
custom.nonorthogonal

contrasts(mtcars$cyl) <- custom.nonorthogonal[,-1]
summary(lm(mpg~cyl,data=mtcars))$coefficients
