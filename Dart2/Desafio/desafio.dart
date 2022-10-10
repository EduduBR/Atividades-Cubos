import 'players.dart';

extension porcentagem on num {
  double porcento(other) => this * 100 / (other);
}

void main() {
  Jogadores player1 = Jogadores('Maurício', 8, 4, 18, 12, 2, 1);
  Jogadores player2 = Jogadores('Marcelo', 15, 10, 8, 5, 21, 18);
  Jogadores player3 = Jogadores('Tande', 11, 6, 14, 12, 15, 11);
  Jogadores player4 = Jogadores('Giovane', 11, 5, 10, 8, 18, 12);
  Jogadores player5 = Jogadores('Paulo', 9, 2, 15, 12, 15, 10);
  Jogadores player6 = Jogadores('Carlos', 10, 3, 10, 8, 12, 8);

  player1.resultado();
  player2.resultado();
  player3.resultado();
  player4.resultado();
  player5.resultado();
  player6.resultado();

  var team_attack = player1.ataques +
      player2.ataques +
      player3.ataques +
      player4.ataques +
      player5.ataques +
      player6.ataques;

  var effective_attack = player1.ataques_efetivos +
      player2.ataques_efetivos +
      player3.ataques_efetivos +
      player4.ataques_efetivos +
      player5.ataques_efetivos +
      player6.ataques_efetivos;

  var team_block = player1.bloqueios +
      player3.bloqueios +
      player4.bloqueios +
      player5.bloqueios +
      player6.bloqueios;

  var effective_block = player1.bloqueios_efetivos +
      player2.bloqueios_efetivos +
      player3.bloqueios_efetivos +
      player4.bloqueios_efetivos +
      player5.bloqueios_efetivos +
      player6.bloqueios_efetivos;

  var lance = player1.saques +
      player2.saques +
      player3.saques +
      player4.saques +
      player5.saques +
      player6.saques;

  var lance_bons = player1.saques_efetivos +
      player2.saques_efetivos +
      player3.saques_efetivos +
      player4.saques_efetivos +
      player5.saques_efetivos +
      player6.saques_efetivos;

  num result_atack = effective_attack.porcento(team_attack);
  num result_block = effective_block.porcento(team_block);
  num result_saques = lance_bons.porcento(lance);

  print('=' * 35);
  print('Resultado da equipe');
  print('Pontos de Saque: $lance_bons/$lance (${result_saques.toStringAsFixed(1)}%)');
  print('Pontos de Bloqueio: $effective_block/$team_block (${result_block.toStringAsFixed(1)}%)');
  print('Pontos de Ataque: $effective_attack/$team_attack (${result_atack.toStringAsFixed(1)}%)');
   print('=' * 35);
}
