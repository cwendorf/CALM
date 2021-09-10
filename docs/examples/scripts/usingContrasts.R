
## Using Contrast Codes

source("http://raw.githubusercontent.com/cwendorf/CALM/main/source-CALM.R")

### The Basic Example

mtcars
mtcars$cyl = factor(mtcars$cyl) 
tapply(mtcars$mpg,mtcars$cyl,mean)

### Available Contrast Codes

#### Example: Treatment (First) Contrasts

contrasts(mtcars$cyl) = treatment.first(3)
summary(lm(mpg~cyl, mtcars))$coefficients

#### Example: Treatment (Last) Contrasts

contrasts(mtcars$cyl) = treatment.last(3)
summary(lm(mpg~cyl, mtcars))$coefficients

#### Example: Control (First) Contrasts

contrasts(mtcars$cyl) = control.first(3)
summary(lm(mpg~cyl, mtcars))$coefficients

#### Example: Control (Last) Contrasts

contrasts(mtcars$cyl) = control.last(3)
summary(lm(mpg~cyl, mtcars))$coefficients

#### Example: Deviation (First) Contrasts

contrasts(mtcars$cyl) = deviation.first(3)
summary(lm(mpg~cyl, mtcars))$coefficients

#### Example: Deviation (Last) Contrasts

contrasts(mtcars$cyl) = deviation.last(3)
summary(lm(mpg~cyl, mtcars))$coefficients

#### Example: Helmert (Forward) Contrasts

contrasts(mtcars$cyl) = helmert.forward(3)
summary(lm(mpg~cyl, mtcars))$coefficients

#### Example: Helmert (Reverse) Contrasts

contrasts(mtcars$cyl) = helmert.reverse(3)
summary(lm(mpg~cyl, mtcars))$coefficients

#### Example: Repeated (Forward) Contrasts

contrasts(mtcars$cyl) = repeated.forward(3)
summary(lm(mpg~cyl, mtcars))$coefficients

#### Example: Repeated (Reverse) Contrasts

contrasts(mtcars$cyl) = repeated.reverse(3)
summary(lm(mpg~cyl, mtcars))$coefficients

#### Example: Difference (Forward) Contrasts

contrasts(mtcars$cyl) = difference.forward(3)
summary(lm(mpg~cyl, mtcars))$coefficients

#### Example: Difference (Reverse) Contrasts

contrasts(mtcars$cyl) = difference.reverse(3)
summary(lm(mpg~cyl, mtcars))$coefficients

### Custom Contrast Codes

#### Example: Orthogonal Contrasts

GM <- c(1/3,1/3,1/3)
H1 <- c(1,-1/2,-1/2)
H2 <- c(0,1,-1)
ex_custom.orthogonal <- rbind(GM,H1,H2)
custom.orthogonal = calm.encode(ex_custom.orthogonal)
custom.orthogonal

contrasts(mtcars$cyl) = custom.orthogonal[,-1]
summary(lm(mpg~cyl, mtcars))$coefficients

#### Example: Nonorthogonal Contrasts

GM <- c(1,0,0)
H1 <- c(1,-1/2,-1/2)
H2 <- c(1,-1,0)
ex_custom.nonorthogonal <- rbind(GM,H1,H2)
custom.nonorthogonal = calm.encode(ex_custom.nonorthogonal)
custom.nonorthogonal

contrasts(mtcars$cyl) = custom.nonorthogonal[,-1]
summary(lm(mpg~cyl, mtcars))$coefficients
