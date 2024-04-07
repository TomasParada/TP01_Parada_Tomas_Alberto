String nombre = ""; // Variable para almacenar el nombre ingresado
boolean pedirNombre = true; // Controla si se debe pedir el nombre

void setup() {
  size(450, 250); // Define el tamaño de la ventana
  textSize(20);
}

void draw() {
  background(#31FAFF);
  if (pedirNombre) {
    fill(0);
    text("Ingresa tu nombre y presiona Enter:", 10, height / 2);
    text(nombre, width/2, height/2 + 30);
  } else {
    fill(0); // Establece el color del texto
    text("Hola, " + nombre, 10, height / 2);
  }
}

void keyPressed() {
  if (pedirNombre) {
    if (keyCode == ENTER || keyCode == RETURN) {
      pedirNombre = false;
    } else if (keyCode == BACKSPACE && nombre.length() > 0) {
      nombre = nombre.substring(0, nombre.length() - 1); // Elimina el último carácter
    } else if (key >= 32 && key <= 126) {
      nombre += key;
    }
  }
}
