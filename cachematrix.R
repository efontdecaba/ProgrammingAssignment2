## Put comments here that give an overall description of what your
## functions do

## This function will contain de 4 functions to set, get the values of the matrix 
## and to get and set the invere.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    Y <- NULL ## I define the matrix that will contain the inverse
    set <- function(y) {
      x <<- y
      Y <<- NULL
    }# This function gets the matrix and caches it.
    
    get <- function() x ## This function returns the matrix
    setinverse <- function(inv) Y <<- inv ## This function stores the inverse
    getinverse <- function() Y ## This funcion returns the inverse
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)

}


## Write a short comment describing this function

## This function makes the inverse and stores it. if called again, it returns the inverse
## without new computation

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    
    inv <- x$getinverse() ## It checks werther the inverse is already computed
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    mat <- x$get()  ## get the matrix to invert
    inv <- solve(mat) ## computes the inverse
    x$setinverse(inv)  ## stores the inverse (caches it) for further access
    inv  ## Returns the inverse

}
