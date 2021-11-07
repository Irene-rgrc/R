#HOJA 1 CON RSTUDIO

#----------------Ejercicio 2-----------------

A<- matrix(c(1,-1,1,-1),nrow=2,ncol=2,byrow=TRUE)
b<-c(1,4)
solve(A,b) # El parametro solve hace que calcule la inversa de A en la que en este caso no existe. Por eso el error

#----------------Ejercicio 3-----------------

A<- array(c(4,2,6,6,-5,5), dim=c(3,2))
b<-array(c(-2,7,0),dim=c(3,1))
solve(A,b)

A<- matrix(c(4,6,2,-5,6,5),nrow=3,ncol=2,byrow=TRUE)
b<-c(-2,7,0)
solve(A,b) 
qr.solve(A,b)
print("El sistema es incompatible")

# El error es debido a que la matriz X no es cuadrada por tanto no puede calcular su inversa y por ello usamos el comando qr para solucionarla

#----------------Ejercicio 4-----------------

A<- matrix(c(2,-3,2,0,2,-8,5,-8,7),nrow=3,ncol=3,byrow=TRUE)
b<-c(1,16,1)
solve(A,b) # El parametro solve hace que calcule la inversa de A en la que en este caso no existe. Por eso el error
print("El sistema es incompatible")

#----------------Ejercicio 5-----------------

A<- matrix(c(1,-4,1,1,-3,1,3,0,6),nrow=3,ncol=3,byrow=TRUE)
b<-c(2,-1,9)
solve(A,b)

# x1=-23 , x2=-3 , x3=13
print("Es un sistema compatible determinado: x1=-23 , x2=-3 , x3=13")

#----------------Ejercicio 6-----------------

A<- matrix(c(0,3,-6,6,4,3,-7,8,-5,8,3,-9,12,-9,6),nrow=3,ncol=5,byrow=TRUE)
b<-c(-5,9,15)
qr.solve(A,b)  # Sistema compatible indeterminado
print("El sistema es compatible indeterminado")


#----------------Ejercicio 7-----------------

A<- matrix(c(1,8,2,0,4,-3,0,0,5),nrow=3,ncol=3,byrow=TRUE)
b<-c(-6,7,0)
solve(A,b) 
print("Es un sistema compatible determinado: x1=-20 , x2=1.75 , x3=0")

#----------------Ejercicio 8-----------------

A<- matrix(c(2,-1,-6,3),nrow=2,ncol=2,byrow=TRUE)
b<-c(h,k)
solve(A,b)
 # b que es una matriz 3x1 no es compatible con a que es una matriz 2x2 por lo tanto no tiene solucion.
print("El sistema es incompatible")

#----------------Ejercicio 9-----------------

A<- matrix(c(1,3,-2,0,2,2,6,-1,-2,4,0,0,5,2,0,2,6,0,8,4),nrow=4,ncol=5,byrow=TRUE)
b<-c(-0,-3,2,8)
qr.solve(A,b) #Sistema incompatible
print("El sistema es incompatible")

#----------------Ejercicio 10-----------------

A<- matrix(c(1,-1,2,-2),nrow=2,ncol=2,byrow=TRUE)
b<-c(1,4)
solve(A,b) #Sistema incompatible 
print("El sistema es incompatible")









