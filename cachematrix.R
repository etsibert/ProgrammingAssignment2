## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        im<-NULL #the matirx inverse
        set<-function(m){
            message("Initizlize...")
            x<<-y
            im<-NULL
        }
        get<-function() {message("makeCacheMatrix.get() - getting The matrix...");x;}
        setInverse<-function(invMat){message("makeCacheMatrix.setInverse() - caching inverse...");im<<-invMat;}
        getInverse<-function() {message("makeCacheMatrix.getInverse() - getting the inverse...");if(is.null(im)){message("Inverse matrix is not solved yet");}; im;}
        list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

}