void main() {
  List<int> list = [3, 5, 10, 2, 5, 1, 2, 3, 6, 12, 15, 22, 8, 4, 13, 25];

  int maior = list.first;
  int menor = list.first;
  int par = 0;
  int impar = 0;
  int soma = 0;

  for (final element in list) {
    soma += element;
    if (element > maior) {
      maior = element;
    }
    if (element < menor) {
      menor = element;
    }
    if (element % 2 == 0) {
      par++;
    } else {
      impar++;
    }
  }
  final media = soma / list.length;
  print('$list => menor é $menor, maoir é $maior, $impar impares, $par pares e media de $media');
}
