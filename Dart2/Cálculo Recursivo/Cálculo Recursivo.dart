import 'dart:io';


void main() {
  print('Digite um valor ');
  int valor = int.parse(stdin.readLineSync()!);
  var list = [];
  
  
  Recursivo() {
   final result = list.reduce((value, element) => value + element);
      print('Todos valores somados de 0 até $valor = $result');
  }
   for (var i = 0; i <= valor; i++) {
      list.add(i);
    }


  Recursivo();
  }





