import javax.swing.JOptionPane;

int base, altura, perimetro, area;
boolean datosValidos = true;

void setup() {
  size(300, 120);
  background(#25CB85);
  fill(0);
  textSize(18);
  
  try {
    String baseStr = JOptionPane.showInputDialog("Introduce la base del rectángulo:");// Solicitud al usuario
    // Verificación en caso de que el usuario presione cancelar
    if (baseStr == null) {
      throw new NullPointerException("El usuario canceló la entrada de la base.");
    }
    base = Integer.parseInt(baseStr);

    String alturaStr = JOptionPane.showInputDialog("Introduce la altura del rectángulo:");// Solicitud al usuario
    // Verificación en caso de que el usuario presione cancelar
    if (alturaStr == null) {
      throw new NullPointerException("El usuario canceló la entrada de la altura.");
    }
    altura = Integer.parseInt(alturaStr);

    perimetro = 2 * (base + altura);
    area = base * altura;
  } catch (NumberFormatException e) {
    // Maneja el caso en que el usuario no ingrese un número
    JOptionPane.showMessageDialog(null, "Por favor, introduce solo números.");
    datosValidos = false;
  } catch (NullPointerException e) {
    // Maneja el caso de que el usuario presione cancelar
    JOptionPane.showMessageDialog(null, "El usuario canceló la operación.");
    datosValidos = false;
  }

  if (datosValidos) {
    text("Base: " + base, 10, 30);
    text("Altura: " + altura, 10, 50);
    text("Perímetro: " + perimetro, 10, 70);
    text("Área: " + area, 10, 90);
  } else {
    text("No se proporcionaron datos válidos.", 10, 30);
  }
}
