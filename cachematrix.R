cachematrix.R
## to cache a matrix
makeCacheMatrix <- function(x=matrix()){
          m<- NULL
          set <- function(y){
            x<<y
            m<< NULL
            
          }
          ## to get matrix 
          get <- function(){x}
          setmatrix <- function(matrix){
            m<< matrix }
          getmatrix <- function (){
            m
          }
          list(set=set,get=get,
               setmatrix=setmatrix,
               getmatrix=getmatrix)
          
  
}


cacheSolve<- function(x, ...) {
  m <- x$getmatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmatrix(m)
  m
}