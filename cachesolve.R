cacheSolve <- function(x, ...) {
  ## create function to return inverse of "x"
  
  m <- x$getinverse() ## m
  if(!is.null(m)) { ## if "m" is not NULL print message "Getting cached data." and return "m" to the console
    message("Getting cached data.")
    return(m)
  }
  data <- x$get() 
  m <- solve(data, ...) ## Invert using solve()
  x$setinverse(m)       ##set inverse to m, that is the inverse of the matrix, which was found using solve() above. 
  m
}