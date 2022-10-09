import 'dart:io';

///extensões
extension calculadora on double {
  double porcentagem(double other) => this * other / 100;
  double minus(double other) => this - other;
}

void main() {
  /// entrada
  print('Digite o valor do produto');
  final valor = double.parse(stdin.readLineSync()!);

 double valordescont = 10;

  /// calculo
  double resultdescont = valor.porcentagem(valordescont);
  double resultvalor = valor.minus(resultdescont);

  ///Resultado
  print('''Preço do produto: $valor 
Desconto de $valordescont %: $resultdescont
Preço do produto com desconto: $resultvalor''');
}
