# Esto es un comentario porque empieza por "#". Todo lo que escribo en comentarios no se ejecuta

#### Clase Matematica Discreta y algebra: Clase de introduccion a R

## Buenas practicas de la programacion:
 # - Comentar mucho el codigo, para ayudarnos a entenderlo en un futuro 
 # - No usar caracteres especiales (tildes, letra "enie", etc) en el nombre de variable.
 #   Puede causar error en un futuro si se lee con otra codificacion
 # - No usar caracteres especiales en comentarios. Recomensable aunque no cause error en un futuro
 #   al no ser partes ejecutables del codigo
 # - Si se puede, escribir el codigo en ingles para evitar usar caracteres especiales. En estas
 #   clases practicas los haremos en espanol


###############################
####    COMANDOS BASICOS   ####
###############################

## Asignacion con "<-" o "="
# Asignamos el valor 3 a la variable x
# Para ejecutar: Ctrol+Enter
x<-3 
x  #evaluar y pinta el resulado
x<-5 # cambio de valor
x

x+ 5 # evalua el resultado de sumar x +5 y lo devuelve por pantalla
x #pero el valor de x sigue siendo 3

# Asignamos el resultado de una operacion a la variable z
z<-x +17*9
z

# Varias opciones para printar por pantalla el valor de una variable:
# funcion print()
print(x)
# ejecutar desde script valor de x
x
# ejecutar en la consola el valor de x
# seleccionar el valor de x y ejecutar la seleccion


## Borrado de objetos con funcion rm()
# borramos el objeto z
rm(z) 
z # el objeto z ya no existe


## Operaciones basicas
y<-4
#Suma: +
x+y
#Resta: -
x-y
#Producto:*
x*y
#Division: /
x/y
#Potencia: ^/ **
x^y
x**y
# Division entera: %/%
x%/%y
#Modulo: %%
x%%y


## Otras operaciones basicas con funciones
# Logaritmo neperiano
log(x)
# logaritmo en otra base
log(x,base=10)
log10(x) # logaritmo en base 10
# para buscar ayuda sobre una funcion en la documentacion de R
?log
help(log)
# Exponencial
exp(x)
log(exp(1))
# no se puede hacer ejecutando e^3. Para ello:
e<-exp(1)
e^3
exp(3) # es lo mismo que hacer exp(3)
# Raiz
sqrt(x)
x^(1/2)
# redondeo
round(x,digits=2)
round(x,digits=0)


## Comparaciones logicas: TRUE, FALSE
x<-4
y<-6
x==y #igualdad
x!=y #desigualdad
x<=y #menor igual
x<y #menor igual
x>=y #mayor igual
x>y #mayor estricto


## Operaciones logicas: AND, OR
# | es la operacion logica OR: comprueba que se cumpla una condicion o la otra. Es TRUE si al menos una de las condiciones es TRUE
x<6|y>8
# & es la operacion logica AND: comprueba que se cumplan ambas condiciones. Es FALSE si al menos una de las condiciones es FALSE
x<6&y>8


## Constantes especiales
#NA : Valor Missing o no definido 
5+ NA  #Si se opera con missing el resultado es missing
is.na(5+NA) # Comprobamos si es missing con function is.na()

#NULL - objeto vacio
10 + NULL  #Si se opera con NULL se devuelve un objeto vacio
is.null(NULL) # comprobamos si es vacio con function is.null()

#Inf / - Inf: + infinito / - infinito
5/0 # el resultado es infinito
-5/0 # el resultado es menos infinito
is.finite(5/0) #comprobamos si es finito con funcion is.finite(). Resultado TRUE es que es finito
# resultado FALSE es que es infinito 

# TRUE/FALSE: variables booleanas o logicas
5==6 #FALSE
5!=6 # TRUE
is.logical(5==6)
is.logical(5)

#NaN : no es un numero (Not a Number)
0/0
is.nan(0/0) #comprobamos si es NaN con funcion is.nan()



## TIPOS DE DATOS EN R: numeros enteros, numeros reales, caracteres
# numeros reales
x<-5
is.numeric(x)

# numeros enteros
x<-as.integer(5)
is.integer(x)
x1 <- as.integer(2.6)
is.integer(x1)

# variables cadena/string/caracter: se definen entre comillas
x<-"hola"
is.character(x)


## TIPO DE OBJETOS EN R: vetores, factores, matrices, data frames, listas


###############################
####        VECTORES       ####
###############################

## Declaracion de un vector con c() funcion de concatenacion
## Declaro un vector numerico de longitud 4
v1<-c(3,15,0,20) 
v1
## Declaracion de un vector con c() y funcion assign()
assign("v2",c(3,15,0,20))
v2
# funcion longitud de un vector
length(v1)
length(v2)

## vector con elementos caracter
v3<-c("hola","mundo","que","tal")
v4
## vector con elmentos logicos
v4<-c(TRUE,FALSE,FALSE)
vv<-c(T,F,F) # T: TRUE, F: FALSE
v4

## Los vectores contienen solo un tipo de datos: 
 # o bien todo numericos, o todo caracter o todo booleano
v5<-c(1,"hola",TRUE)
v5 #Todos los elementos se convierten a tring
v6<-c(2,6,FALSE)
v6 #Todos los elementos se convierten a numerico. FALSE --> 0, TRUE --> 1


## Declaracion de un vector a partir de otros vectores
v1<-c(3,15,-8,1)
v2<-c(-3.6,1.79)
v3<-c(v1,0,8,v2)
v3


## otras formas de declarar vectores: secuencias
v<-1:10 #equivale a c(1,2,3,4,5,6,7,8,9,10)
v
v<-16:91
length(v)

## generalizacion de ":" a traves de funcion seq()
v=seq(1,10,1) #equivale a c(1,2,3,4,5,6,7,8,9,10)
v
v=seq(1,10,2) # con saltos de dos en dos
v # se corresponde con los numeros impares de 1 a 10
v=seq(0,10,2) # con saltos de dos en dos
v # se corresponde con los numeros pares de 1 a 10
v=seq(10,0,-1) # hacia atras con saltos de 1
v
v=seq(10,0,-4) # hacia atras con saltos de 4
v


## otras formas de declarar vectores: repeticiones
v<-rep(1,7) #repite 7 veces el numero 1
v
v<-rep(1:3,times=2) # repite dos veces la secuencia 1:3
v
v<-rep(1:3,each=2) # repite cada elemento dos veces
v


## Operaciones con vectores 
v1<-c(7,9,1,12)
v2<-c(11,3,5,2)
v3=c(7,9,5)
# suma o resta elemento a elemento: los vectores tienen que ser de la misma longitud
v1+v2    
v1-v2
v1 + v3  # Aviso: los vectores tienen que tener la misma longitud o ser multiplo
v1+c(1,1) # Si las longitudes son multiplo se suman en cada elemento en las posiciones repetidas
v4<-v1+v2 # asignar a un vector el resultado de una operacion

# suma de un numero a cada elemento
v2 + 9       
v3+1

# producto de cada elemento por un numero
v2*2
v3*-1

# producto elemento por elemento
v1*v2
v4<-v1*v2 # asigno el resultado a otro vector que creo

# division elemento por elemento
v1/v2

# producto escalar: los vectores han de tener la misma longitud
v1%*%v2
v1%*%v3
v1%*%c(1,1)

# producto vectorial de vectores en 3D: con funcion cross() del paquete globe
# para instalar y cargar paquete globe (esto lo veremos en sesiones mas avanzadas de R):
# ¡OJO! La instalacion y carga de paquetes os la explicare en proximas sesiones. Lo pongo ahora
#       porque han preguntado en la clase del 19 de octubre sobre el producto vectorial.
install.packages("globe") # solo se ejecuta una vez para instalarlo. Una vez instalado, se puede borrar esta sentencia
library(globe)
cross(v1,v3)

## Funciones basicas sobre vectores
v1<-c(7,9,1,12)
# longitud: numero de posiciones
length(v1)
# suma de todos los elementos del vector
sum(v1)
# minimo de un vector
min(v1)
# maximo de un vector
max(v1)


## Conversion de un vector a otro tipo de datos
v1<-c(1.5,2.5,3.5,4.2,7.8,9.3)
# Conversion a entero: No es redondeo
v2<-as.integer(v1)
# Conversion a tipo caracter
v2<-as.character(v1)
# Conversion a numerico
v3<-as.numeric(v1)


## Seleccion de elementos por posicion
# seleccionar una posicion de un vector
v1[2]
# seleccionar las posiciones 2 a 4
v1[2:4]
# seleccionar todas las posiciones menos la primera
v1[-1]
# seleccionar las posiciones 1 y 3
v1[c(1,3)]
# seleccionar las posiciones que son TRUE
v1[c(T,T,F,F,F)]  
# seleccionar los elementos que cumplen una condicion logica
v1[v1>3] 



###############################
####        MATRICES       ####
###############################

## Distintas formas de crear una matriz con funcion matrix()
# Creacion de una matriz de tamaño 5x4 con todo 1
m <- matrix(data=1, nrow=5, ncol=4)  
m
# Creacion de una matriz de tamaño 5x2 a traves de un vector rellenando por filas
m<-matrix(c(1,2,3,4,5,6,7,8,9,10),nrow=5,ncol=2,byrow=TRUE)
m
# Creacion de una matriz de tamaño 5x2 a traves de un vector rellenando por columnas
m<-matrix(c(1,2,3,4,5,6,7,8,9,10),nrow=5,ncol=2,byrow=FALSE)
m
# Funcion para obtener la dimension de una matriz
dim(m) 

# Creacion de una matriz combinando vectores como columnas
v1<-c(8,2,3)
v2<-c(0,-6,-1)
m<-cbind(v1,v2) # combino v1 y v2 en una matriz, donde v1 y v2 son las columnas de la matriz
m
m<-cbind(seq(0,2,1),6:8,c(5,5,5))
m
m <- cbind(1:5, 5:1, 5:9)
m

# Creacion de una matriz combinando vectores como filas
m<-rbind(v1,v2) # combino v1 y v2 en una matriz, donde v1 y v2 son las filas de la matriz
m
m <- rbind(1:5, 5:1, 5:9)
m
m<-rbind(1:5,seq(50,46,-1),seq(0,0.8,0.2))
m

# Creacion de matriz 5x4 con valores desde 1 hasta el numero de celdas de la matriz
x <- matrix(1:20, 5,4)

## Seleccion de elementos de una matriz
m <- rbind(1:5, 5:1, 5:9)
# Por posicion de fila y columna
m[1,4]
# Elementos de una fila
m[3,]
# Elementos de una columna
m[,2]
# Submatriz de los elementos de las filas 1 y 2, y las columnas 4 y 5
m[1:2,4:5]
# Submatriz de todas las filas menos la primera
m[-1,]
# Seleccionar los elementos que cumplen una condicion logica
m>3 # es una matriz logica
m[m>3] # devuelve los elementos que cumplen TRUE en un vector


## Operaciones con matrices
m1<-matrix(c(4,5,1,9,7,5),3,2)
m2<-matrix(c(0,1,-6,2,3,2),3,2)
# sumar o restar un valor a todos los elementos de una matriz
m1+1
m1-4
# multiplicar por un valor a todos los elementos de una matriz
m1*2
# suma o resta de mos matrices del mismo tamaño
m1+m2
m1-m2
# suma de mos matrices del distinto tamaño: no se puede
m3<-matrix(c(1,2,3),nrow=3,ncol=1)
m1+m3

# producto elemento a elemento de mos matrices
m1*m2
# producto elemento a elemento de mos matrices de distinto tamaño: no se puede
m1*m3

# division elemento a elemento
m1/m2

# producto matricial: %*%
m4 <- matrix(c(1,1,6,7,5,8),2,3)
m1%*%m4
m5<-m1%*%m4

## Funciones basicas sobre una matriz
# obtener diagonal de una matriz
diag(m1)
diag(m5)
# transpuesta de una matrix
t(m1)
# suma de todos los elementos de una matrix
sum(m1)
# determinante de una matriz cuadrada
det(m4) # error porque no es cuadrada
det(m5)


##########################################
####  SISTEMA DE ECUACIONES LINEALES  ####
##########################################

## Resolvemos un sistema de ecuaciones Ax=B, donde A es la matriz de coeficientes
 # y b el vector de terminos constantes
A<- matrix(c(0,1,-4,2,-2,5,-8,1,9),nrow=3,ncol=3,byrow=TRUE)
b<-c(8,0,-9)
solve(A,b)

# el vector b lo podemos poner en dimension 3x1
A<- matrix(c(0,1,-4,2,-2,5,-8,1,9),nrow=3,ncol=3,byrow=TRUE)
b<-matrix(c(8,0,-9),3,1)
solve(A,b)

# Sistema no compatible
A<- matrix(c(1,1,1,1),nrow=2,ncol=2,byrow=TRUE)
b<-c(2,-2)
solve(A,b)
