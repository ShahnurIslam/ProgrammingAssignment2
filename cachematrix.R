## Put comments here that give an overall description of what your
## functions do

## Create a special type of matrix with four functions that allow
## you to set the mtrix, get the matrix, set the inverse and get the inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) i <<- solve
  getsolve <- function() i
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
  }


## Checks if the inverse has been calculated already or not.
##If it has then it retrives it from the cache.
##If not then it returns the inverse whilst also storing it in the Cache

cacheSolve <- function(x, ...) {
  
  i <- x$getsolve()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setsolve(i)
  i
  ## Return a matrix that is the inverse of 'x'
}
