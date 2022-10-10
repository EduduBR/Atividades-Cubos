class Jogadores {
  String name;
  int saques;
  int saques_efetivos;
  int bloqueios;
  int bloqueios_efetivos;
  int ataques;
  int ataques_efetivos;
  var team_atack;

  Jogadores(this.name, this.saques, this.saques_efetivos, this.bloqueios,
      this.bloqueios_efetivos, this.ataques, this.ataques_efetivos);

  void resultado() {
      print('$name');
    var result = saques_efetivos * 100 / saques;
       print('Saque: $saques / $saques_efetivos (${result.toStringAsFixed(1)}%)');
    var block = bloqueios_efetivos * 100 / bloqueios;
      print(
        'Bloqueio: $bloqueios/$bloqueios_efetivos (${block.toStringAsFixed(1)}%)');
    var atack = ataques_efetivos * 100 / ataques;
      print('Ataque: $ataques_efetivos/$ataques (${atack.toStringAsFixed(1)}%)\n');
  }
}
