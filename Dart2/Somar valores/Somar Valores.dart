import 'dart:io';

extension calcule on double {
  double soma(double other) => this + other;
}

void main() {
  print("Digite um numero");
  double n1 = double.parse(stdin.readLineSync()!);

  print("Digite outro numero");
  double n2 = double.parse(stdin.readLineSync()!);

  final result = n1.soma(n2);
  print(result);
}
