
makeCacheMatrix <- function(x = matrix()) {
  ## Create makeCacheMatrix function where x is a matrix.
  ## Example, TestMatrix=MakeCacheMatrix(matrix(1:10))

  m <- NULL ## m is set to NULL
  set <- function(y) { ##create a function called "set"
    x <<- y    ## x is a variable outside of the environment that equals y
    m <<- NULL  ## m is a variable outside of the environment that is NULL
  }
  get <- function() x ## This will "get" (i.e., return the value of x, which is defined above as the matrix)
  setinverse <- function(inverse) m <<- inverse # This will "set" the inversevariable "m" outside the environment 
  getinverse <- function() m ## Create "getinverse" function that returns "setinverse", or m which is the cached inverse of x
  list(set = set, get = get,   ## Create a list of the subfunctions (e.g., using example above TestMatrix$set)
       setinverse = setinverse,
       getinverse = getinverse)
}