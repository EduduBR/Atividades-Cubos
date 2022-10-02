extension calculo on int {
  int produto(int other) => this * other;
  int sum(int other) => this + other;
}

void main() {
  ///Escreva um algoritmo em Dart que receba 4 valores.
  ///Calcule o produto* dos dois primeiros e some com o produto dos dois últimos.
  final list = List<int>.unmodifiable([14, 9, 17, 3]);

  ///calculo
  final multiplic = list[0].produto(list[1]);
  final multiplic2 = list[2].produto(list[3]);
  final soma = multiplic.sum(multiplic2);
  ///imprimindo
  print(soma);
}
