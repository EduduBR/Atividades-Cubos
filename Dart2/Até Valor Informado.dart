import 'dart:io';

void main() {
  print('Digite um valor');
  int valor = int.parse(stdin.readLineSync()!);
  int count = 1;
  var lista = [];

  while (count <= valor) {
    count++;
    lista.add(count - 1);
  }

  var result=lista.join(', ');
  print('$result.');
}
