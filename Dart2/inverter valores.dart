///import
import 'dart:io';

void main() {
  print('Digite o valor de A');
  var valor_a = int.parse(stdin.readLineSync()!);

  print('Digite o valor de B');
  var valor_b = int.parse(stdin.readLineSync()!);

  final reversoA = valor_b;
  final reversoB = valor_a;

  print('ValorA recebe $reversoA');
  print('ValorB recebe $reversoB');
}
