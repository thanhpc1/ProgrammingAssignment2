## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## There are two functions 1. makeCacheMatrix and 2.cacheSolve
# The first function initializes the variable m as NULL and 
# it also defines 4 different functions in its body


makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
# the 2nd function will calculate the inverse of an n x n matrix
# However, before calculating the inverse it will check if 
# an inverse has already been calculated
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if (!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
