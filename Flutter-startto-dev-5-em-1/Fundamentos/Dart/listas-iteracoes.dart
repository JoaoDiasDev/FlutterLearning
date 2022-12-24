void main() {
  List<String> nomes = ['Joao', 'Heid', 'Kote', 'Amanda', 'Hazur'];

  print(nomes);

  // for (var i = 0; i <= nomes.length - 1; i++) {
  //   print(nomes[i].toUpperCase());
  // }

  // for (String nome in nomes.sublist(2)) {
  //   print(nome.toUpperCase());
  // }

  nomes.sublist(2).forEach((nome) {
    print(nome.toUpperCase());
  });
}
