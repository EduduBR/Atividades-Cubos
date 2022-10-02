void main() {
  /// entrada
  final notas = [7, 6.3, 8, 5.5];
  final initialValue = 0;

  /// calculo
  final media =
      notas.reduce((value, element) => value + element) / notas.length;

  /// condicionais
  bool calculo = media >= 6.0;
  String result = calculo ? 'Aprovado!!' : 'Reprovado!!';

  print('Média: $media');
  print(result);
}
