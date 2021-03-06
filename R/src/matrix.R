# Get columns A, B E

df[,c("A","B","E")] 

# Get rows through 1 to 4

df[1:4,]

# Get First element for Column A

df[1,"A"]

# Find Null values in column "Ozone"

sum(is.na(d[, "Ozone"]))

# Find the mean by removing na values 

mean(d[,"Ozone"], na.rm=TRUE)
mean(d[["Ozone"]], na.rm=TRUE)

# Find all rows where ozone is not null and is less than 20 

x [x$Ozone < 20 & ! is.na(x$Ozone)  ,]



Col/Row sum and means : Utility functions along with their equvivalent apply variants

	* rowSums = apply(x, 1, sum)
	* rowMeans = apply(x, 1, mean)
	* colSums = apply(x, 2, sum)
	* colMeans = apply(x, 2, mean)

