void main() {
  final listainicial = List<int>.unmodifiable([0,6,8,3,1,4]);

  /// lista para trabalho
  final trablist = List.from(listainicial);
  if (trablist.length > 5) {
    if (trablist.first == 0 && trablist.last == 10) {
      trablist.removeRange(1, (trablist.length +1)- 5);
    } else if (trablist[3] == 3) {
      trablist.first = 1;
      trablist.last = 9;
      final end = trablist.length - 1;
      final start = end - (trablist.length - 5);
    } else {
      trablist.removeLast();
      if (trablist.length > 5) {
        trablist.remove(trablist.first);
        if (trablist.length > 5) {
          trablist.removeRange(0, trablist.length - 5);
        }
      }
    }
  } else {
    final completlist = List.filled(5 - trablist.length, 2);
    trablist.addAll(completlist);
    trablist[1] = 8;
  }

  /// calculos
  final soma = trablist[1] + trablist[3];
  final divisao = trablist.last / trablist[3];
  final result = soma * divisao;

  /// resultado
  print(result > 15 ? 'Lista valida' : 'Lista invalida');
  print(trablist);
}
