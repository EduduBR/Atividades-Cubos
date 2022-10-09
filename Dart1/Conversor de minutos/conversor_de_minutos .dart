void main() {
  const hour_minuts = 60;
  const day_minuts = 1440;
  const minuts_seconds = 60;

  double tempo = 1742.7;

  int dias = 0;
  if (tempo > day_minuts) {
    dias = tempo ~/ day_minuts;
    tempo %= day_minuts;
  }

  int horas = 0;
  if (tempo > hour_minuts) {
    horas = tempo ~/ hour_minuts;
    tempo %= hour_minuts;
  }

  final minutos_decimal = tempo;
  final minutos = minutos_decimal ~/ 1;
  final segundos_decimal = minutos_decimal % 1;
  final segundos = (segundos_decimal * minuts_seconds) ~/ 1;

  String mensagem = '';
  if (dias > 0) {
    final plural = dias == 1 ? 'dia' : 'dias';
    mensagem += '$dias $plural, ';
  }
  if (horas > 0) {
    final plural_hora = horas == 1 ? 'hora' : 'horas';
    mensagem += '$horas $plural_hora e ';
  }

  final plural_minutos = minutos == 1 ? 'minuto' : 'minutos';
  mensagem += '$minutos minutos, ';

  mensagem += '$segundos segundos';
  print(mensagem);
}
