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
        message("Let's first see if the Inverse Matrix is cached...")
        im<-x$getInverse()
        if(!is.null(im)){
            message("The Inverse matrix exists")
            message("Getting Cached Inverse matrix")
        return(im)
        }
        message("Establish the Matrix...")
        data<-x$get()
        message("Solve the Inverse Matrix...")
        im<-solve(data)
        im
}

#Inverse Example: M x InvOfM = I
##Test Case:
myMatrix<-matrix(c(1,2,2,1), nrow=2, ncol=2)
myMatrix
makeCacheMatrix(myMatrix)$getInverse()                    #Attempt to access the cache
InverseOfMyMatrix<-cacheSolve(makeCacheMatrix(myMatrix))  #establish the matrix and solve for its inverse
InverseOfMyMatrix                                         #Show the inverse matrix
makeCacheMatrix(myMatrix)$get()                           #Get the original matrix
makeCacheMatrix(myMatrix)$setInverse(InverseOfMyMatrix)   #Cache the inverse matrix
cacheSolve(makeCacheMatrix(myMatrix))                     #Attempt to re-solve for the inverse. You should get the inverse from the cache
