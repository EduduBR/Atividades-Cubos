import 'dart:io';

void main() {
  print("Digite o primeiro numero");
  int n1 = int.parse(stdin.readLineSync()!);
  print("Digite o segundo numero");
  int n2 = int.parse(stdin.readLineSync()!);

  if (n1 > n2) {
    print('''Maior valor: $n1
Menor valor: $n2''');
  } else if (n1 == n2) {
    print("Valores iguais");
  } else {
    print('''Maior valor: $n2
Menor valor: $n1''');
  }
}
