void main() {
  final numero = 3;

  int soma = 0;

  for (int i = 1; i <= numero; i++) {
    String line = '';
    for (int k = 1; k <= i; k++) {
      soma++;
      final separador = line.isEmpty ? '' : ' ';
      line += '$separador$soma';
    }print(line);
  }

}
