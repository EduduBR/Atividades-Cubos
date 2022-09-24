void main() {
  int numero = 51425;

  final digito = numero ~/ 10000;
  numero %= 10000;

  final digito2 = numero ~/ 1000;
  numero %= 1000;

  final digito3 = numero ~/ 100;
  numero %= 100;

  final digito4 = numero ~/ 10;

  final digito5 = numero % 10;

  print('$digito$digito2$digito3$digito4$digito5');

  ///Comparação
  final parte1 = digito == digito5;
  final parte2 = digito2 == digito4;
  final capicua = parte1 && parte2;
  print(capicua ? 'Capicua' : 'Não capicua');

  if (!parte1) {
    print('O primeiro numero deve ser igual a o ultimo numero');
  }
  if (!parte2) {
    print('O segundo numero deve ser igual a o quarto numero');
  }
}
