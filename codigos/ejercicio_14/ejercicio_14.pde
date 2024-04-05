void setup() {
  //catetos j = 8 y k = 15
  float hipotenusa = calcularHipotenusa(8, 15);
  println("La hipotenusa es: " + hipotenusa);
}

float calcularHipotenusa(float j, float k) {
  return sqrt(sq(j) + sq(k));
}
