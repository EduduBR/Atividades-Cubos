void main() {
  var valor = 200;

  for (var count = 1; count <= valor; count++) {
    if (count % 2 == 1) {
      var result = count * count;
      print('$count * $count == $result');
    }
  }
}
