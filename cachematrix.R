## These functions allow the user to cache the inverse of a matrix and retrieve it later.

## makeCacheMatrix creates a special matrix object that can cache its inverse. 

makeCacheMatrix <- function(x = matrix()){
       invert<-solve(x)
       i<<-invert
       }


## cacheSolve computes the inverse of special matrix returned by makeCacheMatrix. 
## If the inverse has already been calculated, it is retrieved from the cache.


cacheSolve <- function(x, ...) {
       if(!is.null(i)){
               message("getting cached data")
               return(i)
        }else{
               new<-solve(x)
               new
        }
}
