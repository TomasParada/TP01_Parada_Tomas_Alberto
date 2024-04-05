void setup() {
  float tempFahrenheit = 98;
  float tempCelsius = conversorTemp(tempFahrenheit);
  
  println(tempFahrenheit + " grados Fahrenheit son " + tempCelsius + " grados Celsius.");
}

float conversorTemp(float fahrenheit) {
  return (fahrenheit - 32) * 5/9;
}
