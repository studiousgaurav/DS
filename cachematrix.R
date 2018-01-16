## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## This function creates a special "matrix" object that can cache its inverse
  h1 <- NULL                            
      set <- function(y) {                    
            x <<- y                             
            h1 <<- NULL                       
        }
      get <- function() x                     
     
        setinverse <- function(inverse) h1 <<- inverse  
        getinverse <- function() h1                    
      list(set = set, get = get, setinverse = setinverse, getinverse = getinverse) 
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  h1 <- x$getinverse()
      if(!is.null(h1)) {
            message("getting cached data")
            return(h1)
        }
      data <- x$get()
      h1 <- solve(data, ...)
      x$setinverse(h1)
    h1
}

