void main() {
  /// O programa deve calcular as cedulas apartir de 2 até 100
  final valor = 300;

  /// contador de cedulas
  var ced100 = 0;
  var ced50 = 0;
  var ced20 = 0;
  var ced10 = 0;
  var ced5 = 0;
  var ced2 = 0;

  ///Filtro para numeros impares e pares
  final dados = valor % 2;

  /// Decompondo numeros impares
  if (dados == 1) {
    ced5++;
    final total = valor - 5;
    final result100 = total ~/ 100;
    final resto100 = total % 100;
    ced100 = ced100 + result100;
    final result50 = resto100 ~/ 50;
    final resto50 = resto100 % 50;
    ced50 = ced50 + result50;
    final result20 = resto50 ~/ 20;
    final resto20 = resto50 % 20;
    ced20 = ced20 + result20;
    final result10 = resto20 ~/ 10;
    final resto10 = resto20 % 10;
    ced10 = ced10 + result10;
    final result2 = resto10 ~/ 2;
    final resto2 = resto10 % 2;
    ced2 = ced2 + result2;

    ///separando variaveis que são == 0
    final cota1 = ced100 != 0;
    final cota2 = ced50 != 0;
    final cota3 = ced20 != 0;
    final cota4 = ced10 != 0;
    final cota5 = ced2 != 0;

    ///Montando respostas
    var resp_1 = cota1 ? '$ced100 de 100, ' : '';
    var resp_2 = cota2 ? '$ced50 de 50, ' : '';
    var resp_3 = cota3 ? '$ced20 de 20, ' : '';
    var resp_4 = cota4 ? '$ced10 de 10, ' : '';
    var resp_5 = cota5 ? '$ced2 de 2 ' : '';
    var resp_6 = '$ced5 de 5';
    ///Resposta final
    if (cota5 == true){
      print('Você deve entregar:$resp_1$resp_2$resp_3$resp_4$resp_6, $resp_5');
    } 
    else if (cota5 == false){
      print('Você deve entregar:$resp_1$resp_2$resp_3$resp_4$resp_6');
    }
  } ///Decompondo numeros pares
  else if (dados == 0) {
    final result100 = valor ~/ 100;
    final resto100 = valor % 100;
    ced100 = ced100 + result100;
    final result50 = resto100 ~/ 50;
    final resto50 = resto100 % 50;
    ced50 = ced50 + result50;
    final result20 = resto50 ~/ 20;
    final resto20 = resto50 % 20;
    ced20 = ced20 + result20;
    final result10 = resto20 ~/ 10;
    final resto10 = resto20 % 10;
    ced10 = ced10 + result10;
    final result2 = resto10 ~/ 2;
    final resto2 = resto10 % 2;
    ced2 = ced2 + result2;
    ///separando variaveis que são == 0
    final cota1 = ced100 != 0;
    final cota2 = ced50 != 0;
    final cota3 = ced20 != 0;
    final cota4 = ced10 != 0;
    final cota5 = ced2 != 0;
    final cota6 = ced5 != 0;
    ///Montando respostas
    var resp_1 = cota1 ? '$ced100 de 100, ' : '';
    var resp_2 = cota2 ? '$ced50 de 50, ' : '';
    var resp_3 = cota3 ? '$ced20 de 20, ' : '';
    var resp_4 = cota4 ? '$ced10 de 10, ' : '';
    var resp_5 = cota5 ? '$ced2 de 2 ' : '';
    var resp_6 = cota6 ? '$ced5 de 5 ' : '';
    ///Resposta final
    if (cota5 == true){
      print('Você deve entregar:$resp_1$resp_2$resp_3$resp_4$resp_6$resp_5');
    } 
    else if (cota5 == false){
      print('Você deve entregar: $resp_1$resp_2$resp_3$resp_4$resp_6$resp_5');
    }
  }
}
