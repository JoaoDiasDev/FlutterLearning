void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Joao', idade: 21);
  pessoa1.cpf = '7857984988-06';
  print(pessoa1.cpf);
  print(pessoa1.temperatura);
}

class Pessoa {
  Pessoa({required this.nome, required this.idade});

  String nome;
  int idade;
  late String cpf;
  late double temperatura = medirTemperatura();

  double medirTemperatura() {
    print('Mediu a temperatura');
    return 37.0;
  }
}
