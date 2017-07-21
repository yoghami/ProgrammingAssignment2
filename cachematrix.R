## The primary goal of those functions is to save time, The first function returns a list which contains functions that get, set a matrix
## and also get, set the inverse of that matrix. The other function return the inverse if it's previously calculated and calculate it if not

## returns a list functions that set and get the value of a matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y)
    {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinv <- function(solve) inv <<- solve
    getinv <- function() inv
    list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## get the inverse of a matrix if it's previously created and calculate it if not 

cacheSolve <- function(x, ...) {
        inv <- x$getinv()
        if(!is.null(inv))
        {
            message("getting cashed data")
            return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinv(inv)
        inv
}


