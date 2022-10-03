import 'dart:io';

void main() {
  print("Digite F para feminino ou M para masculino");
  var sexo = stdin.readLineSync();

  print("Agora digite sua altura");
  double altura = double.parse(stdin.readLineSync()!);

  if (sexo != null) {
    sexo = sexo.toUpperCase();
    if (sexo == 'M') {
      double homem = (72.7 * altura) - 58;
      print(' Peso ideal:${homem.toStringAsFixed(2)}');
    } else if (sexo == 'F') {
      double mulher = (62.1 * altura) - 44.7;
      print(' Peso ideal:${mulher.toStringAsFixed(2)}');
    } else {
      print("Alternativa invalida");
      print("Escolha entre F ou M");
    }
  } else {
    print('Sua resposta está nula');
  }
}
