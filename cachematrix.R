## Put comments here that give an overall description of what your
## functions do
## This program store the result of the inverse operation over a matrix and store the result in a global scope to allow it use across the whole program

## Write a short comment describing this function
## This function store the inverse of the matrix X in the cache, in order to be used to retrive it with out any extra calculation

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) {
		  x <<- y
		  m <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) m <<- inverse
	getinverse <- function() m
	list(set = set,
		get = get,
		setinverse = setinverse,
		getinverse = getinverse)
}


## Write a short comment describing this function
## This function calculate de inverse of the matrix x.
## If the inverse is in the cache, it will return a message and the inverse matrix from the cache, instead of caculate it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
<<<<<<< HEAD
=======
        ## Return a matrix that is the inverse of 'x'
>>>>>>> refs/remotes/origin/test
		m <- x$getinverse()
		if (!is.null(m)) {
				message("getting from the cached matrix")
				return(m)
		}
		data <- x$get()
		m <- solve(data, ...)
		x$setinverse(m)
		m
}
