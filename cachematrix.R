#This function store and cache a inverse matrix

makeCacheMatrix <- function(x =matrix()) {
       
 s <- NULL
       
 set <- function(y) {
               
 x <<- y #set the matrix in the cache
               
 s <<- NULL
      
  }
        
get <- function() x       #get the matrx
setsolve <- function(solve) s<<- solve  #set matrix
getsolve<- function() s     
  list(set = set, get = get,
           
  setsolve = setsolve,
           
  getsolve = getsolve)
}

#Here the function will calculate the inverse
#Check if the inverse has already been calculated, in case if it throws the saved value otherwise it will calculate the inverse
cacheSolve<- function(x, ...) {
        
s <- x$getsolve()
        
if(!is.null(s)) {
  
              message("getting cached data")
                return(s)
       
 }
        
data <- x$get()
        
s <- solve(data, ...)
       
x$setsolve(s)
