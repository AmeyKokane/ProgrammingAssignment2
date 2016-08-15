## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Ameys Comments:
## This function creates a list of variables that can be used to set or get matrix and inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
  inv. <- NULL
  set <- function(y){
    x <<- y
    inv. <<- NULL
  }
  get <- function() x
  setInv <- function(inverse) inv. <<-inverse
  getInv <- function() inv.
  list(set = set,
       get = get,
       setInv = setInv,
       getInv = getInv)
}


## Write a short comment describing this function
##Ameys Comments:
##This function checks if getInv variable contains any value. If it is empty then inverse is matrix is calculated. 
##If it is not null which means inverse value has already been calculated and is pulled in.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv. <- x$getInv()
  if(!is.null(inv.)){
                  message("getting cached data")
    return(inv.)
  }
  mat <- x$get()
  inv. <- solve(mat,...)
  x$setInv(inv.)
  inv.
}
