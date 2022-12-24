void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Joao', idade: 22);
  Pessoa pessoa2 = Pessoa(nome: 'Mandinha', idade: 22, casado: true);

  pessoa1.dinheiro = 300;
  pessoa2.dinheiro = 999999999999999;

  print(pessoa1.dinheiro);
  print(pessoa2.dinheiro);
}

class Pessoa {
  Pessoa({required this.nome, required this.idade, this.casado = false}) {
    print('Criando $nome com idade $idade');
  }

  String nome;
  int idade;
  bool casado;
  double? _dinheiro;

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

  set dinheiro(double? valor) {
    if (valor != null) {
      if (valor >= 0 && valor < 999999999) {
        print('Modificando dinheiro do $nome');
      }
      _dinheiro = valor;
    }
  }

  double? get dinheiro {
    print('Lendo o dinheiro do $nome');
    return _dinheiro;
  }
}
