## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## the function to make a cache matrix for its inverse

makeCacheMatrix <- function(x = matrix()) {
    j <- NULL
        ## set the matrix
        set <- function(y){
                x<<- y
                j <<-NULL
                }
 ## to get the matrix
        get <- function(){
                x}
 ## to set the inverse
        setinverse<- function(inverse){
                j <- inverse}
      ## get the inverse
        getinverse <- function(){
                j}
## list of methods
        list(set=set,get=get,
             setinverse=setinverse,getinverse=getinverse)
        }

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<- x$getinverse()
   ## return the inverse if already there
        if(!is.null(m)){
              message(  "getting cached inverse")
                return(m)}
     
    ## get the matrix
        data<- x$get()
     ## get the inverse of matix
        m <- solve(data)%*% data
        x$setinverse(m)
        m
                }
}
