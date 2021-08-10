# PRODUCING CODES FROM HYPOTHESES

# Input Matrix of Hypotheses
# Hypotheses are in Columns
L = matrix(c(
1,-.5,-.5,
0,1,-.5,
-1,0,.5,
0,-.5,.5
),
ncol=3, 
byrow=TRUE)

# Calculate Matrix of Codes
X = L %*% solve(t(L) %*% L)

# Output Matrix of Hypotheses
rownames(L)=rownames(L,do.NULL=FALSE,prefix="GR:")
colnames(L)=colnames(L,do.NULL=FALSE,prefix="LH:")
round(L,3)

# Output Matrix of Codes
rownames(X)=rownames(X,do.NULL=FALSE,prefix="GR:")
colnames(X)=colnames(X,do.NULL=FALSE,prefix="VC:") 
round(X,3)



# EXTRACTING HYPOTHESES FROM CODES

# Input Matrix of Codes
# Codes are in Columns
X = matrix(c(
-.5,-1,-1.5,
.5,1,.5,
-1.5,-1,-1.5,
1.5,1,2.5
),
ncol=3,
byrow=TRUE)

# Calculate Matrix of Hypotheses
L = X %*% solve(t(X) %*% X)

# Output Matrix of Codes
rownames(X)=rownames(X,do.NULL=FALSE,prefix="GR:")
colnames(X)=colnames(X,do.NULL=FALSE,prefix="VC:")
round(X,3)

# Output Matrix of Hypotheses
rownames(L)=rownames(L,do.NULL=FALSE,prefix="GR:")
colnames(L)=colnames(L,do.NULL=FALSE,prefix="LH:") 
round(L,3)
