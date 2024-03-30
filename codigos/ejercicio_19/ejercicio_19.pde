PVector puntoInicialLinea;
PVector puntoFinalLinea;
PVector velocidadLinea;
PVector velocidadCirculo;
PVector posicionCirculo;
int radioCirculo;

public void setup (){
  size(400,400);
  puntoInicialLinea = new PVector(0,0);
  puntoFinalLinea = new PVector(width,0);
  velocidadLinea = new PVector(0,1);
  radioCirculo = 40;
  posicionCirculo = new PVector(width/2,radioCirculo);
  velocidadCirculo = new PVector (0,1);
}

public void draw(){
  background(0);
  dibujarLinea();
  desplazarLinea();
  dibujarCirculo();
  desplazarCirculo();
}

public void dibujarLinea(){
  stroke (#F70C3C);
  line(puntoInicialLinea.x,puntoInicialLinea.y,puntoFinalLinea.x,puntoFinalLinea.y);
}

public void desplazarLinea(){
  if(puntoInicialLinea.y>height || puntoInicialLinea.y<0){
    velocidadLinea.y = velocidadLinea.y * -1;
  }
  
  puntoInicialLinea.y+=velocidadLinea.y; // puntoInicialLinea.y = puntoInicialLinea.y + velocidadLinea.y
  puntoFinalLinea.y+=velocidadLinea.y;
}

public void dibujarCirculo(){
  fill(#10E084);
  stroke(#10E084);
  ellipse(posicionCirculo.x,posicionCirculo.y,2*radioCirculo,2*radioCirculo);
}

public void desplazarCirculo(){
  if((posicionCirculo.y - radioCirculo) > height || posicionCirculo.y +radioCirculo < 0){
    velocidadCirculo.y*=(-1);
    if(posicionCirculo.y - radioCirculo > height){
      posicionCirculo.y = posicionCirculo.y - 2*radioCirculo;
    }else{
      posicionCirculo.y = posicionCirculo.y + 2*radioCirculo;
    }
  }
  posicionCirculo.y+=velocidadCirculo.y;
}
