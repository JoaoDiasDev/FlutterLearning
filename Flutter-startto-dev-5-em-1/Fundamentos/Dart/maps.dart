void main() {
  Map<int, String> ddds = {11: 'São Paulo', 19: 'Campinas', 41: 'Curitiba'};

  print(ddds[11]);
  print(ddds.length);

  ddds[11] = 'Brasilia';

  print(ddds);

  ddds.remove(19);

  print(ddds);

  print(ddds.values);
  print(ddds.keys);
  print(ddds.containsKey(50));
  print(ddds.containsValue('Brasilia'));
  print(ddds.isNotEmpty);
  print(ddds.isEmpty);
}
