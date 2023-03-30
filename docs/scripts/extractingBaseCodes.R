# Contrast Algorithms for Linear Models

source("http://raw.githubusercontent.com/cwendorf/CALM/main/source-CALM.R")

## Extracting Hypotheses from R Base Contrast Codes

### contr.treatment

ex_contr.treatment <- cbind(Int=1,contr.treatment(3))
ex_contr.treatment
calm.decode(ex_contr.treatment)

### contr.SAS

ex_contr.SAS <- cbind(Int=1,contr.SAS(3))
ex_contr.SAS
calm.decode(ex_contr.SAS)

### contr.sum

ex_contr.sum <- cbind(Int=1,contr.sum(3))
ex_contr.sum
calm.decode(ex_contr.sum)

### contr.helmert

ex_contr.helmert <- cbind(Int=1,contr.helmert(3))
ex_contr.helmert
calm.decode(ex_contr.helmert)

### contr.poly

ex_contr.poly <- cbind(Int=1,contr.poly(3))
ex_contr.poly
calm.decode(ex_contr.poly)
