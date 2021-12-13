###################################################
# Irene Rodríguez García
# Practica grafos
# 13/12/2021
##################################################

#LLAMAMOS ALAS LIBRERIAS
library(igraph)
library(dplyr)
library(ggplot2)

#DEFINIMOS EL GRAFO a partir de la matriz de adyacencia
adjm <- matrix(c(0,2,2,2,2,0,1,1,2,1,0,1,2,1,1,0),nrow=4,ncol=4,byrow=TRUE) #La flecha es un puntero en cambio el = le asigna auto el valor de la variable.
adjm

#CREAMOS UN OBJETO CON IGRAPH
#Necesita de argumentos la matriaz de adyacencia y el modo del grafo.
#Cuando es dirigido hacemos la matriz de adyacencia y ya esta, si no necesitamos hacer una matriz simetrica.
#
#graph.adjacency(adjmatrix, mode = c("directed", "undirected",
# "max", "min", "upper", "lower", "plus"), weighted = NULL,
# diag = TRUE, add.colnames = NULL, add.rownames = NA)
graph <- graph.adjacency(adjm, mode="undirected")
plot(graph)

#CALCULAR LOS ATRIBUTOS DE CADA VERTICE
V(graph)$degree <- degree(graph)
V(graph)$degree
#NODOS QUE INCIDEN EN EL VERTICE 1
incident(graph, 1, mode = c("all"))

#-------------------------------------------
#Practica 2:

#Crear un gafo con forma de anillo, estrella,árbol.

#Anillo
graph2 <- make_ring(10)
plot(graph2)

#Estrella
Star <- make_star(10, mode = "out")
plot(Star, vertex.color="purple")

Star2 <- make_star(5, mode = "undirected")
plot(Star2, vertex.color="pink")

#Arbol
Tree1<-make_tree(10, 2)
plot(Tree1, vertex.color="pink")

Tree2<- make_tree(10, 3, mode = "undirected")
plot(Tree2, vertex.color="pink")

#Definimos el grafo a partir de la matriz de incidencia y lo dibujamos
el <- matrix( c("1","2","1","4","2","1","2","3","3", "5","4","2","4","3","4","5"), nc=2, byrow = TRUE)
graph3 <-graph_from_edgelist(el)
plot(graph3)

#ESTUDIAMOS ISOMORFISMOS ENTRE GRAFOS
#
# Dividimos la pantalla en dos partes para dibujar los grafos
par(mfrow=c(1,2))

# Definimos el primer grafo
adjm2 <- matrix(c(1,3,2,0,3,0,1,2,2,1,0,1,0,2,1,0),nrow=4,ncol=4,byrow=TRUE)
colnames(adjm2) <- c("a","b","c","d")
rownames(adjm2) <- c("a","b","c","d")
graph2 <- graph.adjacency(adjm2,mode="undirected")
plot(graph2)
# Definimos el segundo grafo
adjm3 <-matrix(c(0,1,2,2,1,0,0,1,1,1,3,0,0,1,1,0,0,1,0,1,0,1,1,1,0),nrow=5,ncol=5,byrow=TRUE)
colnames(adjm3) <- c("a","b","c","d","e")
rownames(adjm3) <- c("a","b","c","d","e")
graph3 <- graph.adjacency(adjm3,mode="undirected")
plot(graph3)

# Estudiamos si son isomorfos
isomorphic(graph2, graph3)
# colored graph isomorphism
g1 <- make_ring(10)
g2 <- make_ring(10)
isomorphic(g1, g2)
V(g1)$color <- rep(1:2, length = vcount(g1))
V(g2)$color <- rep(2:1, length = vcount(g2))
plot(g1)
plot(g2)

# PRACTICA 4:
adjm4 <- matrix(c(0,0,0,0,0,1,0,0,0,1,0,1,0,1,1,0,0,0,0,1,0,0,1,1,0), nrow=5, ncol=5, byrow=TRUE)
adjm4
graph4 <- graph.adjacency(adjm4,mode="directed")
plot(graph4)
