##
	## For matrix let it be represented by x
	## then let "o" be for the null solved value
	## the "mean" would then be replaced with "solve" 

makeCacheMatrix <- function(x = matrix(sample(1:400,7),5,5)) {
o <- NULL
set <- function(y) {
x <<- y
o <<- NULL
}
get <- function() x
     setsolve <- function(solve) o <<- solve
     getsolve <- function() o
     list(set = set, get = get,
	       setsolve = setsolve,
	       getsolve = getsolve)
        
}

## as for this part, "mean" was also replaced with "solve" and with "m" to "o"
cacheSolve <- function(x, ...) {
o <- x$getsolve()
if(!is.null(o)) {
    message("getting inversed matrix")
    return(o)
}
    data <- x$get()
    o <- solve(data, ...)
    x$setsolve(o)
    o
}

