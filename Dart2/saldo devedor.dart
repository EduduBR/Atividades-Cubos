void main() {
  ///entradas
  double total_parcelas = 60;
  double parcelas_pagas = 18;
  double valor_parcelas = 566.78;
  ///calculo
  double valor_total = total_parcelas * valor_parcelas;
  double divida = valor_total - (parcelas_pagas * valor_parcelas);
  ///imprimindo
  print('''Valor total do consórcio: R\$ ${valor_total.toStringAsFixed(2)}
Saldo devedor: R\$ ${divida.toStringAsFixed(2)}''');

}
