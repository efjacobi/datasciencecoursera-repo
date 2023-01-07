# MY Response for this assignment begins at Line 20 (below).

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#makeCacheMatrix <- function(x = matrix()) {

#}


## Write a short comment describing this function

#cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
#}


##
##
## Below are two functions that are used to create a 'special object' 
##  that stores a numeric matrix 'X' and caches its inverse.
##
## The first function, 'makeCacheMatrix', creates a special 'matrix', 
##  which is really a 'list' containing a function to:
##   1. set the value of the matrix (X)
##   2. get the value of the matrix (X)
##   3. set the value of the matrix inverse
##   4. get the value of the matrix inverse
##
##
makeCacheMatrix <- function(X = matrix()) {
  
  m <- NULL
  set <- function(y) {
    X <<- y
    m <<- NULL
  }
  get <- function() X
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get, 
       setinverse = setinverse, 
       getinverse = getinverse)
}
##
##
##  The following function calculates the inverse of the 
##   special 'matrix' created with the above function. However,
##   it first checks to see if the inverse has already been 
##   calculated. If so, it 'gets' the inverse from the cache 
##   and skips the computation. Otherwise, it calculates the 
##   inverse of the matrix data and 'sets' the value of the
##   matrix inverse in the cache via the 'setinverse' function.
##
cacheSolve <- function(X, ...) {
  ## Return a matrix that is the inverse of 'X'
  m <- X$getinverse()
  if(!is.null(m)) {
    message("getting cached result")
    return(m)
  }
  data <- X$get()
  m <- solve(data, ...)
  X$setinverse(m)
  m
}
#  
## The following "Test 1 code" and "Test 2 code" both exercise
##  the 2 "cachematrix" functions to see if they work correctly.
#
# Test 1 code

mm <- matrix(rnorm(16), 4, 4)
m1 <- makeCacheMatrix(mm)

## m1$get() == mm ?
#
# mm is the 'original' matrix
mm

m1$get()
mm
# yes mm == m1$get()

## before we calc the inverse....look at m1$getinvers()
m1$getinvers()

## let's try cacheSolve(mm)
cacheSolve(m1)
## now I see cacheSolve(m1) gets me the 'cached inverse'

cacheSolve(m1)

## so we see 'cacheSolve' 'sees' the cached result
##  AND spits it out....

##
##  AND ; what's in getinverse() 
m1$getinverse()  ## should NOT be 'NULL"


##  Test Code 2

##  let's try a new 2x2 matrix
mm2 <- matrix(c(2,1,2,4), 2,2)
m1 <- makeCacheMatrix(mm2)
mm2
m1$get()
m1$getinverse()
cacheSolve(m1)
cacheSolve(m1)
m1$getinverse()

