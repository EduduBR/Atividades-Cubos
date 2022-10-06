import 'calculadora.dart';
import 'tela.dart';

void main() {
  Calculadora calculadora = Calculadora();
  Screen tela = Screen();

  num valor1 = 11;
  num valor2 = 7.45;
  int operacao = 2;

  switch (operacao) {
    case 1:
      tela.show('Resultado:${calculadora.sum(valor1, valor2)}');
      break;
    case 2:
      tela.show('Resultado: ${calculadora.decrease(valor1, valor2)}');
      break;
    case 3:
      tela.show('Resultado: ${calculadora.division(valor1, valor2)}');
      break;
    case 4:
      tela.show('Resultado: ${calculadora.multiplication(valor1, valor2)}');
      break;
    default:
      tela.show('Opção invalida');
  }
}
