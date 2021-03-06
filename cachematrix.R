## Caching the inverse of a matrix
## Stores a matrix and caches its invers

## Special matrix

makeCacheMatrix <- function(x = matrix()) {
+   inv <- NULL
+   set <- function(y) {
+     x <<- y
+     inv <<- NULL
+   }
+   get <- function() x
+   setInverse <- function(inverse) inv <<- inverse
+   getInverse <- function() inv
+   list(set = set,
+        get = get,
+        setInverse = setInverse,
+        getInverse = getInverse)
+ }



## Returns the inverse of the matrix above

cacheSolve <- function(x, ...) {
+   inv <- x$getInverse()
+   if (!is.null(inv)) {
+     message("getting cached data")
+     return(inv)
+   }
+   mat <- x$get()
+   inv <- solve(mat, ...)
+   x$setInverse(inv)
+   inv
+ }

