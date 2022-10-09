void main() {
  ///dados
  final temperatura_celsius = 32;

  ///conversores
  final fahrenheit = (temperatura_celsius * 1.8) + 32;
  final kelvin = temperatura_celsius + 273.15;

  ///Imprimindo
  print('A temperatura de $temperatura_celsius°C convertida para Fahrenheit seria $fahrenheit°F');
  print('------------------------------------------------------------');
  print('A temperatura de $temperatura_celsius°C convertida para Kelvin seria $kelvin°K');
  
}
