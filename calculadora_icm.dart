void main() {
  /// DADOS
  final altura_joao = 1.50;
  final peso_joao = 60;

  final altura_maria = 1.43;
  final peso_maria = 45;

  final altura_bruxa = 1.65;
  final peso_bruxa = 102;

  /// CALCULO PARA MEDIR SE O ICM ESTÁ NORMAL

  final icm_joao = peso_joao / (altura_joao * altura_joao);
  final icm_maria = peso_maria / (altura_maria * altura_maria);
  final icm_bruxa = peso_bruxa / (altura_bruxa * altura_bruxa);

  /// IMPRIMINDO
  print("O ICM de João é");
  print(icm_joao.toStringAsFixed(2));
  print("O ICM de Maria é");
  print(icm_maria.toStringAsFixed(2));
  print("O ICM da Bruxa é");
  print(icm_bruxa.toStringAsFixed(2));
}
