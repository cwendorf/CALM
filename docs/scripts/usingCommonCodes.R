# Contrast Algorithms for Linear Models

source("http://raw.githubusercontent.com/cwendorf/CALM/main/source-CALM.R")

## Using Common Contrast Codes

### The Data

mtcars
mtcars$cyl <- factor(mtcars$cyl)
tapply(mtcars$mpg, mtcars$cyl, mean)

### Treatment (First) Contrasts

contrasts(mtcars$cyl) <- treatment.first
summary(lm(mpg ~ cyl, data = mtcars))$coefficients

### Treatment (Last) Contrasts

contrasts(mtcars$cyl) <- treatment.last
summary(lm(mpg ~ cyl, data = mtcars))$coefficients

### Control (First) Contrasts

contrasts(mtcars$cyl) <- control.first
summary(lm(mpg ~ cyl, data = mtcars))$coefficients

### Control (Last) Contrasts
contrasts(mtcars$cyl) <- control.last
summary(lm(mpg ~ cyl, data = mtcars))$coefficients

### Deviation (First) Contrasts

contrasts(mtcars$cyl) <- deviation.first
summary(lm(mpg ~ cyl, data = mtcars))$coefficients

### Deviation (Last) Contrasts

contrasts(mtcars$cyl) <- deviation.last
summary(lm(mpg ~ cyl, data = mtcars))$coefficients

### Helmert (Forward) Contrasts

contrasts(mtcars$cyl) <- helmert.forward
summary(lm(mpg ~ cyl, data = mtcars))$coefficients

### Helmert (Reverse) Contrasts

contrasts(mtcars$cyl) <- helmert.reverse
summary(lm(mpg ~ cyl, data = mtcars))$coefficients

### Repeated (Forward) Contrasts

contrasts(mtcars$cyl) <- repeated.forward
summary(lm(mpg ~ cyl, data = mtcars))$coefficients

### Repeated (Reverse) Contrasts

contrasts(mtcars$cyl) <- repeated.reverse
summary(lm(mpg ~ cyl, data = mtcars))$coefficients

### Difference (Forward) Contrasts

contrasts(mtcars$cyl) <- difference.forward
summary(lm(mpg ~ cyl, data = mtcars))$coefficients

### Difference (Reverse) Contrasts

contrasts(mtcars$cyl) <- difference.reverse
summary(lm(mpg ~ cyl, data = mtcars))$coefficients
