import 'caixa.dart';
import 'gerente.dart';
import 'vendedor.dart';

void main() {
  Caixa caixa = Caixa(1579, 'Ana', 'Oliveira', 1212, 230);
  Gerente gerente = Gerente(1603, 'Maria', ' Souza', 1212, 230);
  Vendedor vendedor = Vendedor(1601, 'João', 'Silva', 1212, 230);

  print('''matrícula:${gerente.matricula}
nome:${gerente.nome} ${gerente.sobrenome}
Horas trabalhadas no mês:${gerente.horas}
Salário:${gerente.extras().toStringAsFixed(2)}\n''');

print('''matrícula:${vendedor.matricula}
nome:${vendedor.nome} ${vendedor.sobrenome}
Horas trabalhadas no mês:${vendedor.horas}
Salário:${vendedor.extras().toStringAsFixed(2)}\n''');

print('''matrícula: ${caixa.matricula}
nome:${caixa.nome} ${caixa.sobrenome}
Horas trabalhadas no mês: ${caixa.horas}
Salário: ${caixa.extras().toStringAsFixed(2)}\n''');














}
