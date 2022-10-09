import 'dart:io';
void main() {
  var list = [];

 print('Digite um valor');
  int valor = int.parse(stdin.readLineSync()!);
 
 for (int i = 1; i <= valor; i++){
    if (i % 2 == 0){
    list.add(i);
    }
  }
 final result = list.join(' ');
 print(result);
}
