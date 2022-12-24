void main() {
  Pessoa pessoa1 = Pessoa.casada(nome: 'Joao', idade: 40);

  print(pessoa1.nome);
  print(pessoa1.idade);
  print(pessoa1.casado);

  pessoa1.trocarNome('Amanda');

  pessoa1.aniversario();
  pessoa1.casar();

  print(pessoa1.idade);
  print('Você esta ${pessoa1.casado ? 'Casado' : 'Solteiro'}');

  Pessoa pessoa2 = Pessoa.solteira(nome: 'Mandinha', idade: 22);
  pessoa2.casado = true;
  print(pessoa2.nome);
  print(pessoa2.idade);
  print(pessoa2.casado);
}

class Pessoa {
  Pessoa({required this.nome, required this.idade, this.casado = false}) {
    print('Criando $nome com idade $idade');
  }

  Pessoa.casada({required this.nome, required this.idade, this.casado = true});

  Pessoa.solteira(
      {required this.nome, required this.idade, this.casado = false});

  String nome;
  int idade;
  bool casado;

  int aniversario() {
    print('Parabéns! $nome');
    idade = idade + 1;
    return idade;
  }

  void casar() {
    casado = true;
  }

  void trocarNome(String n) {
    nome = n;
  }
}
