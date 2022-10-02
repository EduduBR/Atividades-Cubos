import 'dart:io';

void main() {
  /// entradas
  print("Digite a primeira nota");
  double nota1 = double.parse(stdin.readLineSync()!);
  
  print("Digite a segunda nota");
  double nota2 = double.parse(stdin.readLineSync()!);
  
  print("Digite a terceira nota");
  double nota3 = double.parse(stdin.readLineSync()!);
 /// calculo
  double soma = (nota1 + nota2 + nota3) / 3;
//imprimindo
  print('Média : ${soma.toStringAsFixed(2)}');
}
