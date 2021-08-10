# Producing Codes

L = matrix( 
c(.333,.333,.333,
.667,-.333,-.333,
-.333,.667,-.333),
nrow=3, 
byrow=TRUE)

L
X = t(L) %*% solve(L %*% t(L))
round(X,3)


# Extracting Codes

X = matrix( 
c(1,1,0,
1,0,1,
1,-1,-1),
ncol=3,
byrow=TRUE)

X
L = solve(t(X) %*% X) %*% t(X)
round(L,3)