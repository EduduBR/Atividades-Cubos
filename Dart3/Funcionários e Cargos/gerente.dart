import 'dados.dart';

class Gerente extends Dados {
  Gerente(
      super.matricula, super.nome, super.sobrenome, super.salario, super.horas);

  @override
  double extras() {
    double pagamento = super.extras();
    return pagamento + pagamento / 100 * 35;
  }
}
