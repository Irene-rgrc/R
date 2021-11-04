#HOJA 1 CON RSTUDIO

#----------------Ejercicio 1-----------------

# 3x1-4x2=24

X = array(c(3,-4), dim=c(2,1))
b = array(c(24), dim=c(1,1))

i=1
for (i in X[i]) {
  if (is.integer(X[i])==FALSE){
    print("No es lineal")
  } else {
    print("Es lineal")
  }
  i=i+1 
  
}


# x1 - x2 + 5x3 + (2^(1/2))x4 = 1

X = c(1,-1,5,(2^(1/2)))
b = 1

i=1
for (i in X[i]) {
  if (is.integer(X[i])==FALSE){
    print("No es lineal")
  } else {
    print("Es lineal")
  }
  i=i+1 
  
}



#----------------Ejercicio 2-----------------

A<- matrix(c(1,-1,1,-1),nrow=2,ncol=2,byrow=TRUE)
b<-c(1,4)
solve(A,b)

#----------------Ejercicio 3-----------------

X<- array(c(4,2,6,6,-5,5), dim=c(3,2))
b<-array(c(-2,7,0),dim=c(3,1))
solve(X,b)

#----------------Ejercicio 4-----------------


a1 = c(2,-3,2,1)
a2 = c(2,0,-8,16)
a3 = c(5,-8,7,1)

#Primer paso
a2 = a2-a1
a3 = a1*a3[1]-(a3*a1[1])

#Segundo paso
a3 = a3*a2[2]-a2

a1
a2
a3
A0 = cbind (a1,a2,a3)

A = A0[1:3,1:3]

b = A0[4,]

solve(A,b)

#----------------Ejercicio 5-----------------



















