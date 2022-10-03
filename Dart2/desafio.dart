class Jogador {
  String name;
  int saques;
  int saques_efetivos;
  int bloqueios;
  int bloqueios_efetivos;
  int ataques;
  int ataques_efetivos;

  Jogador({
    required this.name,
    required this.saques,
    required this.saques_efetivos,
    required this.bloqueios,
    required this.bloqueios_efetivos,
    required this.ataques,
    required this.ataques_efetivos,
  });
  void acerto() {
    var result = saques_efetivos * 100 / saques;
    print('Saque: $saques / $saques_efetivos (${result.toStringAsFixed(1)}%)');
  }

  void erro() {
    var block = bloqueios_efetivos * 100 / bloqueios;
    print(
        'Bloqueio: $bloqueios/$bloqueios_efetivos (${block.toStringAsFixed(1)}%)');
  }

  void nice() {
    var atack = ataques_efetivos * 100 / ataques;
    print('Ataque: $ataques_efetivos/$ataques (${atack.toStringAsFixed(1)}%)');
  }
}

void main() {
  Jogador player1 = new Jogador(
      name: 'Maurício',
      saques: 8,
      saques_efetivos: 4,
      bloqueios: 18,
      bloqueios_efetivos: 12,
      ataques: 2,
      ataques_efetivos: 1);
  print('Jogador: ${player1.name}');
  player1.acerto();
  player1.erro();
  player1.nice();
  print('<<<<<<<<<<<<<<<<<<<<<<<');

  Jogador player2 = new Jogador(
      name: 'Marcelo',
      saques: 15,
      saques_efetivos: 10,
      bloqueios: 8,
      bloqueios_efetivos: 5,
      ataques: 21,
      ataques_efetivos: 18);
  print('Jogador: ${player2.name}');
  player2.acerto();
  player2.erro();
  player2.nice();
  print('>>>>>>>>>>>>>>>>>>>>>>>');

  Jogador player3 = new Jogador(
      name: 'Tande',
      saques: 11,
      saques_efetivos: 6,
      bloqueios: 14,
      bloqueios_efetivos: 12,
      ataques: 15,
      ataques_efetivos: 11);
  print('Jogador: ${player3.name}');
  player3.acerto();
  player3.erro();
  player3.nice();
  print('<<<<<<<<<<<<<<<<<<<<<<<');

  Jogador player4 = new Jogador(
      name: 'Giovane',
      saques: 11,
      saques_efetivos: 5,
      bloqueios: 10,
      bloqueios_efetivos: 8,
      ataques: 18,
      ataques_efetivos: 12);
  print('Jogador: ${player4.name}');
  player4.acerto();
  player4.erro();
  player4.nice();
  print('>>>>>>>>>>>>>>>>>>>>>>>');
  Jogador player5 = new Jogador(
      name: 'Paulo',
      saques: 9,
      saques_efetivos: 2,
      bloqueios: 15,
      bloqueios_efetivos: 12,
      ataques: 15,
      ataques_efetivos: 10);
  print('Jogador: ${player5.name}');
  player5.acerto();
  player5.erro();
  player5.nice();
  print('<<<<<<<<<<<<<<<<<<<<<<<');
  Jogador player6 = new Jogador(
      name: 'Carlos',
      saques: 10,
      saques_efetivos: 3,
      bloqueios: 10,
      bloqueios_efetivos: 8,
      ataques: 12,
      ataques_efetivos: 8);
  print('Jogador: ${player6.name}');
  player6.acerto();
  player6.erro();
  player6.nice();
  print('>>>>>>>>>>>>>>>>>>>>>>>');

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
      player2.bloqueios +
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

  var saques_point = (lance_bons * 100) / lance;
  var block_point = (effective_block * 100) / team_block;
  var atack_point = (effective_attack * 100) / team_attack;

  print('<<<<<<<<<<<<<<<<<<<<<<<');
  print('Resultado (equipe)');
  print(
      'Pontos de Saque: $lance_bons/$lance (${saques_point.toStringAsFixed(1)}%)');
  print(
      'Pontos de Bloqueio: $effective_block/$team_block (${block_point.toStringAsFixed(1)}%)');
  print(
      'Pontos de Ataque: $effective_attack/$team_attack (${atack_point.toStringAsFixed(1)}%)');
}
