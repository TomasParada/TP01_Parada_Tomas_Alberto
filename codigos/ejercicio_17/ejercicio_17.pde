PVector posLink, posTesoro;
PImage imagenLink;
PImage imagenCofre;

public void setup(){
  size (500,500);
  posLink = new PVector (100,100);
  posTesoro = new PVector(width/2, height/2);
  imagenLink = loadImage("link.png");
  imagenCofre = loadImage("cofre.png");
}

public void draw(){
  background(0);
  dibujarLink();
  posLink.x = mouseX;
  posLink.y = mouseY;
  validarDibujarTesoro();
}

public void dibujarLink(){
  imageMode(CENTER);
  image(imagenLink, posLink.x, posLink.y,90,90);
  //circle(posLink.x, posLink.y, 40);
}

public void dibujarTesoro(){
  image(imagenCofre,posTesoro.x, posTesoro.y, 100, 70); 
}

public float obtenerDistancia(){
  float distancia=0;
  float cateto1=posTesoro.x-posLink.x;
  float cateto2=posTesoro.y-posLink.y;
  distancia = sqrt(pow(cateto1,2) + pow(cateto2,2));
  return distancia;
}

public void validarDibujarTesoro(){
  if(obtenerDistancia() < 70){
    println("Debe desaparecer el Tesoro");
  }else{
    dibujarTesoro();
    strokeWeight(5);
    stroke(#F8FF36);
    line(posLink.x, posLink.y, posTesoro.x,posTesoro.y);
  }
}
