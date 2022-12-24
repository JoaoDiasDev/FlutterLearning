void main() {
  Pessoa? pessoa1;
  print(pessoa1?.cidade?.toUpperCase());
  pessoa1?.comer();
}

class Pessoa {
  Pessoa({required this.nome, required this.idade});

  String nome;
  int idade;
  String? cidade;

  void comer() {
    print('Comendo...');
  }
}
