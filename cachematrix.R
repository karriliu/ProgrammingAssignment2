## Put comments here that give an overall description of what your
## functions do

## 1.set the value of the matrix
## 2.get the value of the matrix
## 3.set the value of the inversed matrix
## 4.get the value of the inversed matrix


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
  
  
}


## The following function calculates the inversed matrix of the special "matrix" created with the above function. 
##However, it first checks to see if the inversed matrix has already been calculated. 
##If so, it gets the inversed matrix from the cache and skips the computation. 
##Otherwise, it calculates the inversed matrix of the data and sets the value of the inversed matrix in the cache via the setsolve function

cacheSolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
}

