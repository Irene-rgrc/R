# Traslacion
Traslacion<-function(p,q){
  p_new<-c(0,0)
  p_new[1]=p[1]+q[1]
  p_new[2]=p[2]+q[2]
  x=c(p[1],q[1])
  y=c(p[2],q[2])
  plot(x,y, main=paste("Traslacion"),
       xlim=c(min(p_new[1],p[1],q[1])-1,max(p_new[1],p[1],q[1])+1),
       ylim=c(min(p_new[2],p[2],q[2])-1,max(p_new[2],p[2],q[2])+1),)
  points(p_new[1],p_new[2],pch=22,col="red",lwd=3)
  return(p_new)
}
Traslacion(c(2,3),c(1,1))
