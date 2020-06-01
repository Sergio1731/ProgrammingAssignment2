## This pair of functions will create a matrix and then cache its inverse

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m<-NULL
        set<-function(values,ncol,nrow){
                x<-c(values,ncol,nrow)
                m<<-NULL
        }
        get<-function() x{
                setmatrix<-function(matrix) m<<-matrix
                getmatrix<-function() m 
                list(set=set,get=get,
                     setmatrix=setmatrix,
                     getmatrix=getmatrix)
        }
}


## This function will return the inverse of a matrix 'x'

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getmatrix()
        if(!is.null(m)){
                message('getting cached data...')
                return(m)
                
        }
        data<-x$get()
        m<-solve(data,...)
        x$setmatrix(m)
        m
}
