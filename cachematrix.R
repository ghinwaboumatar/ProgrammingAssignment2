makeCacheMatrix <- function(x = matrix()) {
##e.g x<-matrix(rnorm(30),6,6)
  y <- NULL ## assign null to the variable
  set <- function(z){
  x <<- z ## cache the matrix 
  y <<- NULL ## assign null to variable y in the current environment
  }
  get <- function()x ## get the cached matrix
  setInverse <- function(inverse) y <<- inverse ## save the inverse of the matrix in y
  getInverse <- function() y  ## get its value
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}


cacheSolve <- function(x, ...) {
  y <- x$getInverse()
  if(!is.null(y)){
  message("getting cached data")
  return(y)
  }
  mat <- x$get()
  y <- solve(mat,...)
  x$setInverse(y)
  j
}
