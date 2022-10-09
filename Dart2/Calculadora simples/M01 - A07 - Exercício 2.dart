import 'dart:io';

extension calcule on double {
  double soma(double other) => this + other;
  double minus(double other) => this - other;
  double division(double other) => this / other;
  double multip(double other) => this * other;
}

void main() {
  print("Digite um numero");
  var n1 = double.parse(stdin.readLineSync()!);
  print("Digite outro numero");
  var n2 = double.parse(stdin.readLineSync()!);

  var escolha = 0;
  while (escolha != 5) {
    print('''Digite sua escolha
[1]-Adição
[2]-Subtração
[3]-Multiplicação
[4]-Divisão''');
    print('Faça sua escolha');
    int escolha = int.parse(stdin.readLineSync()!);
    if (escolha == 1) {
      print('--------------');
      print('$n1 + $n2 = ${n1.soma(n2)}');
      print('--------------');
    } else if (escolha == 2) {
      print('--------------');
      print('$n1 - $n2 = ${n1.minus(n2)}');
      print('--------------');
    } else if (escolha == 3) {
      print('--------------');
      print('$n1 * $n2 = ${n1.multip(n2)}');
      print('--------------');
    } else if (escolha == 4) {
      print('--------------');
      print('$n1 / $n2 = ${n1.division(n2)}');
      print('--------------');
    }else{
       print('--------------');
       print("Escolha invalida");
       print('--------------');
    }
  }
}
