void setup() {
  //inicializar variables
  int contador1 = 3;
  int contador3 = 4;
  
  //Evaluar las expresiones
  int R1 = ++contador1; //incrementa contador1 antes de usarlo.
  boolean R2 = contador1 < contador3; // Compara el valor actualizado de contador1 con contador3.
  
  //Imprimir resultados
  println("R1 = " + R1); // Imprime el valor de contador1 después del incremento.
  println("R2 = " + R2); // Imprime el resultado de la comparación.
}
