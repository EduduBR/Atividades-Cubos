import 'dados.dart';

class Vendedor extends Dados{
  Vendedor(super.matricula, super.nome, super.sobrenome, super.salario, super.horas);
  
   @override
  double extras() {
    double salario = super.extras();
    return salario + salario / 100 * 20;
  }
}
