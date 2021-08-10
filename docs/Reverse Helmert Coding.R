# Producing Codes

L = matrix( 
c(.333,.333,.333,
0,1,-1,
1,-.5,-.5),
nrow=3, 
byrow=TRUE)

L
X = t(L) %*% solve(L %*% t(L))
round(X,3)


# Extracting Codes

X = matrix( 
c(1,0,.667,
1,.5,-.333,
1,-.5,-.333),
ncol=3,
byrow=TRUE)

X
L = solve(t(X) %*% X) %*% t(X)
round(L,3)