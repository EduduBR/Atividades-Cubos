import 'dart:io';

void main() {
  print('''C) Create	
R) Read		
U) Update	
D) Delete''');

  print('Digite sua escolha');
  var escolha = stdin.readLineSync();



  if (escolha != null) {
    escolha = escolha.toLowerCase();
    if (escolha == 'c') {
      print('(Cadastrar/Inserir)');
    } else if (escolha == 'r') {
      print('(Buscar/Ler)');
    } else if (escolha == 'u') {
      print('(Editar/Atualizar)');
    } else if (escolha == 'd') {
      print('(Excluir/Apagar)');
    }
  }
}
