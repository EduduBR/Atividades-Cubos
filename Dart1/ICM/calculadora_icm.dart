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
  final result_joao = icm_joao.toStringAsFixed(2);
  final result_maria = icm_maria.toStringAsFixed(2);
  final result_bruxa = icm_bruxa.toStringAsFixed(2);

  print('O icm de João é $result_joao');
  print('O icm de Maria é $result_maria');
  print('O icm de Bruxa é $result_bruxa\n');

  print('Recomendações:\n');

  ///Resultado João
    if (icm_joao < 18.5) {
    print('Joao está abaixo do peso, ainda não achou a cabana de doces');
  } else if (icm_joao < 25) {
    print('João está no peso normal. Parabéns ');
  } else if (icm_joao < 30) {
    print('João está com excesso de peso, acabou de achar a cabana de doces');
  } else if (icm_joao < 35) {
    print('João está obesidade clase I, 3 dias comendo doces na cabana');
  } else if (icm_joao < 40) {
    print('João está obesidade clase II, 6 dias comendo doces na cabana');
  } else if (icm_joao >= 40) {
    print('João está obesidade clase III, vai precisar ir pra SmartFit');
  }

  ///Resultado Maria
    if (icm_maria < 18.5) {
    print('Maria está abaixo do peso, ainda não achou a cabana de doces');
  } else if (icm_maria < 25) {
    print('Maria está no peso normal. Parabéns ');
  } else if (icm_maria < 30) {
    print('Maria está com excesso de peso, acabou de achar a cabana de doces');
  } else if (icm_maria < 35) {
    print('Maria está obesidade clase I, 3 dias comendo doces na cabana');
  } else if (icm_maria < 40) {
    print('Maria está obesidade clase II, 6 dias comendo doces na cabana');
  } else if (icm_maria >= 40) {
    print('Maria está obesidade clase III, vai precisar ir pra SmartFit');
  }

  ///Resultado Bruxa
  if (icm_bruxa < 18.5) {
    print('Bruxa está abaixo do peso, o caldeirão furou');
  } else if (icm_bruxa < 25) {
    print('Bruxa está no peso normal. Parabéns');
  } else if (icm_bruxa < 30) {
    print(
        'Bruxa está com excesso de peso, construiu a cabana e comeu o material da obra');
  } else if (icm_bruxa < 35) {
    print(
        'Bruxa está obesidade clase I, 3 dias comento o reboco de doce da cabana');
  } else if (icm_bruxa < 40) {
    print(
        'Bruxa está obesidade clase II, 10 dias comento o reboco de doce da cabana');
  } else if (icm_bruxa >= 40) {
    print(
        'Bruxa está obesidade clase III, 35 dias comento o reboco de doce da cabana');
  }
}
