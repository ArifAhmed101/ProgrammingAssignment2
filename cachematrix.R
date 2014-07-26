## functions to set and get input matrix
makeCacheMatrix<- function(x = matrix()) {
  m<-NULL
  pv <-NULL
  set<-function(y){
      x<<-y
      m<<-NULL
    }

  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}

## function to calculate the inverse matrix
cacheSolve <- function(x=matrix(), ...) {
  m<-x$getmatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix<-x$get()   ## gets the input matrix
  m<-solve(matrix, ...) ## inverses the matrix
  x$setmatrix(m)    ## sets value of m with inverse matrix
  m                 ## returns inv matrix
}
