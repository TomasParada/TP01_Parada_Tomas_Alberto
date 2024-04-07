import javax.swing.JOptionPane;

void setup() {
  String nombre = JOptionPane.showInputDialog("Introduce tu nombre:");
  String mensaje;

  // Verifica si el usuario ingresó un nombre o presionó cancelar.
  if (nombre != null && nombre.length() > 0) {
    println("Hola, " + nombre + " ¡buen día!");
    mensaje = "Hola, " + nombre + " ¡buen día!";
  } else {
    println("No se introdujo un nombre.");
    mensaje = "No se introdujo un nombre.";
  }

  size(450, 150);
  background(#18D3F2);
  fill(0);
  textSize(20);
  text(mensaje, 20, 75);
}
