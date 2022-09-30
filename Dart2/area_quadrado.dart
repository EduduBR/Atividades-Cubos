import 'dart:io';

void main() {
  ///Dados
  print('Digite o medida de um lado do quadrado');
  ///calculo
  final lado = int.parse(stdin.readLineSync()!);
  final saida = lado * lado;
  ///Imprimindo
  print('''Lados: $lado
Área:$saida''');
}
