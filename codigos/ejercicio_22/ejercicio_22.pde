void setup() {
  size(600, 600); // Establece el tamaño del lienzo
  int numStripes = 10; // Número de franjas y espacios para círculos
  int stripeHeight = height / numStripes; // Altura de las franjas
  int y = 0; // Inicializa la posición y para la primera franja
  int circleRadius = stripeHeight / 2; // Radio de las esferas basado en la altura de la franja

  // Variables para los colores de las líneas
  int lineColor = color(#2621E8);
  background(#B4B4B4);

  // Dibuja las franjas y esferas
  do {
    // Dibuja la línea de la franja
    stroke(lineColor); // Color fijo para las líneas
    strokeWeight(1); // Establece el grosor de la línea
    line(0, y + circleRadius, width, y + circleRadius); // Dibuja la línea

    // En las franjas impares, dibuja los círculos
    if ((y / stripeHeight) % 2 == 0) {
      int x = circleRadius; // Comienza en la mitad de la altura de la franja
      do {
        // Establece un color aleatorio para cada círculo
        fill(random(255), random(255), random(255));
        noStroke(); // Sin borde para los círculos
        ellipse(x, y + circleRadius, circleRadius * 2, circleRadius * 2); // Dibuja el círculo
        
        // Dibuja la línea debajo de cada círculo
        stroke(lineColor); // Color fijo para las líneas debajo de los círculos
        strokeWeight(1); // Establece el grosor de la línea
        line(x - circleRadius, y + stripeHeight, x + circleRadius, y + stripeHeight); // Dibuja la línea

        x += stripeHeight; // Avanza a la posición para el siguiente círculo
      } while (x <= width);
    }

    // Avanza a la siguiente franja
    y += stripeHeight;
  } while (y <= height);

  noLoop(); // No se necesita ejecutar el bucle draw
}
