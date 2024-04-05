void setup() {
  float numero1 = 10, numero2 = 5;
  
  println("Suma: " + sumar(numero1, numero2));
  println("Resta: " + restar(numero1, numero2));
  println("Multiplicación: " + multiplicar(numero1, numero2));
  println("División: " + dividir(numero1, numero2));
}

float sumar(float a, float b) {
  return a + b;
}

float restar(float a, float b) {
  return a - b;
}

float multiplicar(float a, float b) {
  return a * b;
}

float dividir(float a, float b) {
  if (b == 0) {
    println("No se puede dividir por cero.");
    return 0;
  } else {
    return a / b;
  }
}
