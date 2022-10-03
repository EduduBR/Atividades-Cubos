import 'dart:io';

extension bissexto on int {
  double mod4(double) => this % 4;
  double mod100(double) => this % 100;
  double mod400(double) => this % 400;
}

void main() {
  print('Digite o ano para saber se é bissexto');
  int ano = int.parse(stdin.readLineSync()!);

  if(ano.mod100(double)!=0 && ano.mod4(double)==0 ||ano.mod400(double)==0){
    print('É Bissexto');
  } else {
    print('Não é Bissexto');
  }
}
