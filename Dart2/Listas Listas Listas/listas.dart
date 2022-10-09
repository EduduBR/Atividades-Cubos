void main() {
  final lista_a = List.empty(growable: true);
  final list_b = List.filled(4, 2.2);
  final lista_c = List.unmodifiable(list_b);
  final lista_d = [...lista_c, 2, 3];
  final lista_e = lista_a + lista_c;
  final lista_f = [if (lista_e.length == 4) 2.2, 5, 10];

  lista_d.clear();

  print(lista_f.first == lista_c.last);

  ///bonus
  final lista_g = List.from(lista_f);
  lista_f.add(5);
  print(lista_f);
  print(lista_g);
}
