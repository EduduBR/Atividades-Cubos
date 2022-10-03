import 'dart:io';

void main() {
  print('Digite um valor');
  int valor = int.parse(stdin.readLineSync()!);

  if (valor % 5 == 0) {
    print(valor * 2);
  } else {
    print('Não é divisivel por 5');
  }
}
