void main() {
  final a = 8;
  final b = 15;
  final c = 17;

  ///Calculo
  if ((a < b + c) && (b < a + c) && (c < a + b)) {
    print('É um triangulo!');
    if ((a == b) && (b == c)) {
      print('Tipo: Equilátero');
    } else if ((a == b) || (b == c) || (c == a)) {
      print('Tipo: Isósceles');
    } else if ((a != b) || (b != c) || (c != a)) {
      print('Tipo: Escaleno');
    }
    if ((a * a) + (b * b) == (c * c)) {
      print('Tipo: Triangulo Retangulo');
    }
  } else {
    print('Não é um triangulo');
  }
}
