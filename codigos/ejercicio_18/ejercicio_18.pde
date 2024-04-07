void setup() {
  float a, b, c;
  float discriminante, raiz1, raiz2;
  
  a = 1;
  b = -5;
  c = 4;
  
  discriminante = b*b - 4*a*c;
  
  if (discriminante > 0) {
    raiz1 = (-b + sqrt(discriminante)) / (2*a);
    raiz2 = (-b - sqrt(discriminante)) / (2*a);
    println("Las raíces son reales y distintas: ");
    println("Raíz 1 = " + raiz1);
    println("Raíz 2 = " + raiz2);
  } else if (discriminante == 0) {
    raiz1 = -b / (2*a);
    println("Hay una única raíz real: ");
    println("Raíz = " + raiz1);
  } else {
    println("Las raíces son complejas y no se pueden calcular con números reales.");
  }
  
}
