## Coursera | Johns Hopkins University | Data Science - Programming Assignment 2
## Author: Paschalis Dedousis | padedou@gmail.com

# Constructor function which returns a List which resembles a matrix in OOP style.
makeCacheMatrix <- function(matrix = matrix()) {
  inverse <- NULL
  
  # Set 'x' and reinitialize 'inverse'
  setMatrix <- function(mat) {
    matrix <<- y
    inverse <<- NULL
  }
  
  # Setup accessor methods.
  getMatrix <- function() {
    matrix
  }
  
  setInverse <- function(inv) {
    inverse <<- inv
  }
  
  getInverse <- function() {
    inverse
  }
  
  # Return a List in order to have access to the internal functions
  list(
    setMatrix = setMatrix,
    getMatrix = getMatrix,
    setInverse = setInverse,
    getInverse = getInverse
  )
  
}


## Calculate the inverse of matrix 'x' and cache it.

cacheSolve <- function(x, ...) {
  # Check if the inverse of matrix 'x' has been already calculated, if yes then return it.
  # Else, calculate it, cache it and return it.
  inverse <- x$getInverse()
  
  if(!is.null(inverse)) {
    message('Getting cached inverse.')
    return(inverse)
  }
  
  matrix <- x$getMatrix()
  inverse <- solve(matrix)
  x$setInverse(inverse)
  
  inverse
}
