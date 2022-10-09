import 'dart:developer';

void main() {
  var numero = 10;
  int fatorial = 1;

  for (int count = 2; count <= numero; count++) {
    fatorial *= count;
  }
  print('$numero! => $fatorial');
}
