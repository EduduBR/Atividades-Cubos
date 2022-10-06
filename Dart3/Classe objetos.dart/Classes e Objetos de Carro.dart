class Car {
  String brand;
  String model;
  String color;
  double potency;
  String fuel;

  Car(this.brand, this.model, this.color, this.potency, this.fuel);
}

void main() {
  final newCar = Car('Fiat', 'Palio', 'Branco', 1.4, 'flex');
  final newCar2 = Car('Volkswagen', 'Jetta', 'Branco', 2.0, 'gasolina');
  final newCar3 = Car('Ford', 'F100', 'Preta', 1.8, 'diesel');

  print('=' * 20);
  
  print('''Montadora:${newCar.brand}
Modelo:${newCar.model}
Cor:${newCar.color}
Motor:${newCar.potency}
Combustível:${newCar.fuel}   ''');

  print('=' * 20);
 
  print('''Montadora:${newCar2.brand}
Modelo:${newCar2.model}
Cor:${newCar2.color}
Motor:${newCar2.potency}
Combustível:${newCar2.fuel}   ''');

  print('=' * 20);
 
  print('''Montadora:${newCar3.brand}
Modelo:${newCar3.model}
Cor:${newCar3.color}
Motor:${newCar3.potency}
Combustível:${newCar3.fuel}   ''');

  print('=' * 20);
}
