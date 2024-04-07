void setup() {
  float a, b, c, x, y, d;
  
  a = 8;
  b = 5;
  c = 6;
  x = 4;
  y = 6;
  d = 1;
  
  // a) b^2 - 4ac
  float resultadoA = pow(b, 2) - 4 * a * c;
  println("Resultado de a): " + resultadoA);
  
  // b) 3x^4 - 5x^3 + x + 12 - 17
  float resultadoB = 3 * pow(x, 4) - 5 * pow(x, 3) + x * 12 - 17;
  println("Resultado de b): " + resultadoB);
  
  // c) (b + d) / (c + 4)
  float resultadoC = (b + d) / (c + 4);
  println("Resultado de c): " + resultadoC);
  
  // d) (x^2 + y^2)^(1/2)
  float resultadoD = sqrt(pow(x, 2) + pow(y, 2));
  println("Resultado de d): " + resultadoD);
}
