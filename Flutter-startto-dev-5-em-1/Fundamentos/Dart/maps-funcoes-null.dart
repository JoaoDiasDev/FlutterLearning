void main() {
  Map<int, String> ddds = {11: 'São Paulo', 19: 'Campinas', 41: 'Curitiba'};

  ddds.forEach((key, value) {
    print('Key $key Value $value');
  });

  // ddds.clear();
  ddds.addAll({90: 'Cidade Legal', 91: 'Cidade chata'});

  print(ddds);

  ddds.removeWhere((key, value) => key >= 90);

  print(ddds);

  // String cidade = ddds[13]!; // vai gerar erro pois não existe esta key na lista
  String cidade = ddds[11]!;
  print(cidade.toUpperCase());
}
