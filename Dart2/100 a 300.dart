import 'dart:io';

void main() {
 print('Digite um numero pra contar de 10 em 10');
  int entrada = int.parse(stdin.readLineSync()!);

  for (var count = 0; count <= entrada; count+=10) {
    print(count);
  }
}
