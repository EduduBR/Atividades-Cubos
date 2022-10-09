import 'dart:math';

void main() {
  final a = 1;
  final b = -5;
  final c = 6;

  final delta = (b * b) - (4 * a * c);
  final x1 = (-b + sqrt(delta)) / (2 * a);
  final x2 = (-b - sqrt(delta)) / (2 * a);

  print('X1= $x1');
  print('X2= $x2');
}
