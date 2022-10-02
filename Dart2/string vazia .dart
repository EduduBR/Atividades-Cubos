import 'dart:io';

void main() {
   String? name = stdin.readLineSync();
   
  if (name == "") {
    print("Bem-vindo(a) visitante!");
  } else {
    print( "Bem-vindo(a) $name!");
    }
}
