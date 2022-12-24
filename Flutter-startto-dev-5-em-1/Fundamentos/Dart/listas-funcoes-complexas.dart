void main() {
  List<String> maluca = List.filled(100, 'Dias');

  List<int> doida = List.generate(10, (i) => i * 10);

  doida.removeAt(0);

  bool temValor = doida.any((i) => i % 33 == 0);

  print(maluca);
  print(doida);
  print(doida.isEmpty);
  print(doida.isNotEmpty);
  print(temValor);
  print(doida.firstWhere((i) => i % 40 == 0));
  print(doida.lastWhere((i) => i % 40 == 0));
  print(doida.where((i) => i % 40 == 0));
  print(doida.map((i) {
    return 2 * i;
  }));
}
