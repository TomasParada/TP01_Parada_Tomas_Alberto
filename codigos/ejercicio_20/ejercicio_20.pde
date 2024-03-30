int altoRectangulo, anchoRectangulo, distanciaER;
PVector posicionRectangulo;

public void setup (){
  size(440,420);
  altoRectangulo=20;
  anchoRectangulo=40;
  distanciaER=20;
  posicionRectangulo = new PVector (distanciaER,distanciaER);
  background (#BFBDB5);
  
  for(int j=1;j<=10;j++){
    for(int i=1;i<=7;i++){
      dibujarRectangulo();
      cambiarPosicionXRectangulo();
    }
    posicionRectangulo.x = distanciaER;
    posicionRectangulo.y = posicionRectangulo.y + altoRectangulo + distanciaER;
    
  }
}


public void dibujarRectangulo (){
  fill(255,0,0);
  rect(posicionRectangulo.x,posicionRectangulo.y,anchoRectangulo,altoRectangulo);
}

public void cambiarPosicionXRectangulo(){
  posicionRectangulo.x = posicionRectangulo.x + anchoRectangulo + distanciaER;
}
