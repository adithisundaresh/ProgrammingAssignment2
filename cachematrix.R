## Functions to find and cache inverse of a matrix

## Function to set matrix and inverse

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
        x <<- y
        i <<- NULL
    }
    get <- function() x
    setinverse <- function(solve) i <<- solve
    getinverse <- function() i
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
    
}


## Function to solve matrix inverse

cacheSolve <- function(x, ...) {
    i <- x$getinverse()
    if(!is.null(i)) {
        print("getting cached data")
        return(i)
    }
    data <- x$get()
    i <- solve(data, ...)
    x$setinverse(i)
    i
    ## Return a matrix that is the inverse of 'x'
}
