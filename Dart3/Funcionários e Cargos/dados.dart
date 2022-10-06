
abstract class Dados {
  final int matricula;
  final String nome;
  final String sobrenome;
  double salario;
  int horas;

  Dados(this.matricula, this.nome, this.sobrenome, this.salario, this.horas);

  double extras() {
    if (this.horas > 220) {
      int horasextras = this.horas - 220;
      double valorhora = this.salario / 220;
      double valorextra = valorhora / 2 + valorhora;
      double result = valorextra * horasextras;
      return this.salario + result;
    }
    return this.salario;
  }
}
