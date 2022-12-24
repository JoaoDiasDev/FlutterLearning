void main() {
  List<String> nomes = ['Joao', 'Dias'];

  print(nomes);

  List<int> idades = [15, 25, 35, 56];

  idades.add(4);
  idades.add(34);

  idades.addAll([32, 24, 311]);
  idades.insert(2, -2);

  print(idades.contains(32));
  print(idades.indexOf(311));

  print(idades.remove(4));
  print(idades.removeAt(5));

  idades.shuffle();

  idades.clear();

  print(idades);
}
