import 'dart:io';

void main() {
  print("Sequência de Fibonacci até:");
  int valor = int.parse(stdin.readLineSync()!);

  var t1 = 0;
  var t2 = 1;
  var list = [];
  var count = 0;

  recursiva() {
    while (count < valor) {
      var t3 = t1 + t2;
      list.add(t3);
      t1 = t2;
      t2 = t3;
      count++;
    }
  }
 recursiva();
 
  var result = (list.where((element) => element <= valor && element > 0));
  print(result.join(', '));

  
}
