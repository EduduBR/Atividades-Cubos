import 'dart:io';

void main() {
  print("Digite uma palavra");
  String? texto = stdin.readLineSync();

  if (texto != null) {
    print('A palavra "$texto" tem ${texto.length} letras.');
  }
  if (texto == '') {
    print('Você não digitou nada!');
  }
}
