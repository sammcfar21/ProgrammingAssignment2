## These function will take a matrix.  Check for a cached inverse of the matrix.
## Then if there is a cached inverse it will output the cached inverse.
## If there is no cached inverse it will calculate the inverse and cache it.


## Will take the input matrix

makeCacheMatrix <- function(x = matrix()) {
      i <- NULL
      set <- function(y) {
            x <<- y
            i <<- NULL
      }
      get <- function () x
      setinverse <- function (inv) i <<- inv
      getinverse <- function () i
      list (set = set, get = get,
            setinverse = setinverse,
            getinverse = getinverse)
}

## Will check for cached inverse of matrix. If no inverse will create an inverse
## and cache that inverse.

cacheSolve <- function(x, ...) {
       i <- x$getinverse()
       if(!is.null (i)){
             message ("getting cached data")
             return (i)
       }
      data <- x$get()
      i <- solve (data)
      x$setinverse(i)
      i  ## Return a matrix that is the inverse of 'x'
}
