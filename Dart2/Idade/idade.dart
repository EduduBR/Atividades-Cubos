import 'dart:io';

void main() {
  /// data atual
  var hoje = DateTime.now();
/// entradas
  print("Digite seu nome");
  var name = stdin.readLineSync();

  print("Agora digite o ano do seu nascimento");
  int ano = int.parse(stdin.readLineSync()!);

  print("Agora digite o mês do seu nascimento");
  int mes = int.parse(stdin.readLineSync()!);

  print("Agora digite o dia do seu nascimento");
  int dia = int.parse(stdin.readLineSync()!);
/// condicionais
  bool status1 =
      (hoje.year - ano >= 18 && hoje.month == mes && hoje.day == dia);//caso seja aniversario da pessoa

  bool status2 = (hoje.year - ano >= 18 && hoje.month < mes );//caso a pessoa ainda faça aniversario esse ano

/// função
  idade() {
  if (status1 == true) {
    print('''Nome: $name
Idade :${hoje.year - ano}
Pode dirigir!''');
  }else if(hoje.year - ano > 18) {
    print('''Nome: $name
Idade :${hoje.year - ano}
Pode dirigir!''');
  }else if (status2 == true){
    print('''Nome: $name
Idade :${hoje.year - ano - 1}
Não Pode dirigir!''');
  }else {
    print('''Nome: $name
Idade :${hoje.year - ano}
Não Pode dirigir!''');
  }
}

  idade(); /// invocando a função
}
