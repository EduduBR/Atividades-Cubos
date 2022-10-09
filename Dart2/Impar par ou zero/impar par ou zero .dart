import 'dart:io';

void main() {
  print("Digite um valor");
  final valor = int.parse(stdin.readLineSync()!);
 
  final result = valor % 2;

  if (valor == 0) {
      print('Zero');
  } else if (result == 0) {
      print('Par');
  } else if (result == 1) {
      print('Impar');
  }
}
