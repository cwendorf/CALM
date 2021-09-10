
## Extracting Hypotheses from Codes

source("http://raw.githubusercontent.com/cwendorf/CALM/main/source-CALM.R")

### Extracting from Regression Codes

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

### Extracting from R Base Contrast Codes

#### Example: contr.treatment

ex_contr.treatment = cbind(Int=1,contr.treatment(3))
calm.decode(ex_contr.treatment)

#### Example: contr.SAS

ex_contr.SAS = cbind(Int=1,contr.SAS(3))
calm.decode(ex_contr.SAS)

#### Example: contr.sum

ex_contr.sum = cbind(Int=1,contr.sum(3))
calm.decode(ex_contr.sum)

#### Example: contr.helmert

ex_contr.helmert = cbind(Int=1,contr.helmert(3))
calm.decode(ex_contr.helmert)

#### Example: contr.poly

ex_contr.poly = cbind(Int=1,contr.poly(3))
calm.decode(ex_contr.poly)
