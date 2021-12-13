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
