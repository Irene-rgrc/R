#Comente la solucion del sistema:

## Resolvemos un sistema de ecuaciones Ax=B, donde A es la matriz de coeficientes
# y b el vector de terminos constantes


A<- matrix(c(1,-1,1,-1),nrow=2,ncol=2,byrow=TRUE)
b<-c(1,4)
solve(A,b)


#-------------------------------------------


A<- array(c(1,-1,1,-1),dim=c(2,2))
A

b<-array(c(1,4),dim=c(2,1))
b

solve(A,b)


if (is.finite(C)==FALSE) {
  print("Sistema compatible indeterminado")
} else if (is.finite(C)==TRUE){
  print("Sistema compatible determinado")
} else {
  print("Sistema incopatible")
}
