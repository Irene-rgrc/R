#
# Introduccion
#


# Condicionales
x <- 2
y <- 3

if (x > y) {
  print("X es mayor a y")
} else if (x == y) {
  print("X es igual a y")
} else {
  print("X es menor que y")
}

# Funciones
sumar <- function(a, b) {
  return (a + b)
}

multiply <- function(a, b) {
  # RELLENAR
}

# Bucles

for (i in 1:10) {
  print(i)
}

for (i in seq(0, 1, 0.1)) {
  print(i)
}

i<-0
while (i <=10){
  print(i)
  i=i+1
}

sumar_vector <- function(v) {
  # Sumar los elementos de v (utilizando un bucle) y guardarlo en la variable suma.
  # Recordad, la funcion length nos devuelve el tamaño
  suma <- 0
  
  return (suma)
}



# ---------------------------------------------------------------------------------------
# Parte 1: Posicion recta
# ---------------------------------------------------------------------------------------

# Dado un punto p = [p1, p2] del plano afin real y una recta r (y = ax + b), determinar
# si el punto está debajo, arriba o en la recta.


# Definimos nuestro punto
p <- c(1, 2)
m <- 3
b <- 2

calcular_y <- function(x, m, b) {
  # x es el valor para el que queremos evaluar la recta con pendiente
  # m y ordeanada en el origen b
  
  # RELLENAR:  Actualizar el valor de y con su valor real
  y <- 0
  
  return (y)
}

posicion_recta <- function(p, m, b) {
  # Tenemos el parametro p que es un vector de dos elementos, el elemento
  # 1 que seria la x, y el elemento 2 que seria la y. p=[x, y]
  # m es la pendiente, y b la ordenada en el origen
  
  # RELLENAR: imprimir el resultado
}

# Evaluamos la funcion posicion recta..
posicion_recta(c(3, 3), 1, 0)
posicion_recta(c(1, 2), -3, 2)


# También lo podemos hacer con una visualizacion. Ejemplo de visualizacion:

# Pintamos una recta
x = -2:2 # lo que pintamos en el eje x
y = -3 * x + 2 # lo que pintamos en el eje y
plot(
  x,
  y,
  type = "l",
  xlab = "x",
  ylab = "-3*x+2",
  main = "posicion punto-recta",
  col = "blue"
)

# Pintamos una recta y un punto (1, 2)
plot(
  x,
  y,
  type = "l",
  xlab = "x",
  ylab = "-3*x+2",
  col = "blue",
  main = "posicion punto-recta",
  lwd = 3
)
points(1,
       2,
       type = "p",
       col = "darkgreen",
       lwd = 3)


posicion_recta_punto_dibujo <- function(p, r) {
  x <- c(p[1] - 1, p[1] + 1)
  y <- 0 # RELLENAR: Evaluamos la funcion y guardamos el valor en y
  
  # RELLENAR: Hacer plot..
  # plot......
  
  # RELLENAR: Dibuar el punto (p)
  # points o text
}


# Evaluamos la funcion que acabamos de crear
posicion_recta_punto_dibujo(c(-1, 3), function(x)
  3 * x + 2)


# ---------------------------------------------------------------------------------------
# Parte 2: Determinantes
# ---------------------------------------------------------------------------------------

x <- c(0, 1, 1, 0)
y <- c(0, 0, 1, 1)
plot(-1:1,-1:1, main = paste("Poligono"))
polygon(
  x,
  y,
  col = "orange",
  lty = 1,
  lwd = 2,
  border = "blue"
)


paralelogramo_dibujo <- function(v1, v2) {
  # v1 y v2 son los dos vectores que forman la base
  # Calcular x e y (como en el ejemplo de arriba) para estos dos vectores
  
  # RELLENAR
  x <- c()
  y <- c()
  
  
  min_v = min(min(x), min(y)) - 1
  max_v = max(max(x), max(y)) + 1
  plot(min_v:max_v,
       min_v:max_v,
       type = 'n',
       main = paste("Poligono"))
  polygon(
    x,
    y,
    col = "orange",
    lty = 1,
    lwd = 2,
    border = "blue"
  )
}

# Probar diferentes vectores
paralelogramo_dibujo(c(0, 1), c(2, 0))
paralelogramo_dibujo(c(0, 1), c(1, 0))

# Ahora calculamos el determinante
B <- matrix(c(0, 1, 1, 0),
            nrow = 2,
            ncol = 2,
            byrow = TRUE)
det(B)

# Hacer pruebas con diferentes matrices, como se ve cuando el paralelogramo cuando el determinante es 0?
# PROBAR


# ---------------------------------------------------------------------------------------
# Parte 2: Cambio de sistema
# ---------------------------------------------------------------------------------------

# Ver animaciñon de las transformaciones (grid): https://www.youtube.com/watch?v=kYB8IZa5AuE

## Sistema de referencia canonico: el que solemos usar por ser mas intuitivo
x=c(0:2,0.5)
y=c(0:2,0.5)
plot(x,y,type="n",main="Sistema de referencia canonico") # type= "n" para no pintar los puntos (x,y)
arrows(0,0,1,0,col="blue",lwd=3) # añado vector (1,0) del eje x
arrows(0,0,0,1,col="green",lwd=3) # añado vector (0,1) del eje y
points(0,0,lwd=) #añado el origen de coordenadas que es (0,0)



# Dibujo el sistema de referencia formado por:
# origen: el punto (1,1)
# v1: el vector (1,0.5)
# v2: el vector (0.5,1)
x=c(0:2,0.5)
y=c(0:2,0.5)
plot(x,y,type="n",main="Sistema de referencia")
arrows(0,0,1,0.5,col="green",lwd=3) # añado v1
arrows(0,0,0.5,1,col="blue",lwd=3) # añado v2
points(1,1,lwd=3) # añado origen de coordenadas
## en este grafico, los vectores se deberían trasladar al punto (1,1), es decir,
# "nacer" en ese punto que es el origen de coordenadas en este sistema de referencia.


x=c(0:2,0.5)
y=c(0:2,0.5)
plot(x,y,type="n",main="Sistema de referencia")
arrows(1,1,1,0.5,col="green",lwd=3) # añado v1
arrows(1,1,0.5,1,col="blue",lwd=3) # añado v2
points(1,1,lwd=3) # añado origen de coordenadas
## en este grafico, los vectores se deberían trasladar al punto (1,1), es decir,
# "nacer" en ese punto que es el origen de coordenadas en este sistema de referencia.



# ---------------------------------------------------------------------------------------
# Parte 3: Cambio de sistema
# ---------------------------------------------------------------------------------------
cambioReferenciaSistemaCanonico <- function (p, o, v1, v2) {
  # p es el punto que queremos convertir, o la ordenada en el origen, y v1 y v2
  # son las base
  
}

p = c(2, 3)
origen = c(1, 1)
v1 = c(0.5, 1)
v2 = c(1, -0.5)

cambioReferenciaSistemaCanonico(p, origen, v1, v2)


# Como podriamos calcular volver al sistema canonico?
# RELLENAR
