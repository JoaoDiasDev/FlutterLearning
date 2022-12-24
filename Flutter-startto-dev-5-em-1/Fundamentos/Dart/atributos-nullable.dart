void main() {
  Pessoa pessoa1 = Pessoa(nome: 'Joao', idade: 22);
  Pessoa pessoa2 = Pessoa(nome: 'Mandinha', idade: 22, casado: true);

  pessoa1.dinheiro = 300;
  pessoa2.dinheiro = 999999999999999;

  if (pessoa1.dinheiro >= 150) {
    print(pessoa1.dinheiro);
  }

  String? nome = pessoa1.nomeSecreto;

  if (nome != null) {
    print(nome.toUpperCase());
  }

  if (pessoa1.atributo != null) {
    print(pessoa1.atributo!.toUpperCase());
  }
}

class Pessoa {
  Pessoa({required this.nome, required this.idade, this.casado = false}) {
    print('Criando $nome com idade $idade');
  }

  String nome;
  int idade;
  bool casado;
  String? atributo = 'HELOOOOUU';
  double _dinheiro = 0;

  set dinheiro(double valor) {
    if (valor >= 0 && valor < 999999999) {
      print('Modificando dinheiro do $nome');
    }
    _dinheiro = valor;
  }

  double get dinheiro {
    print('Lendo o dinheiro do $nome');
    _dinheiro -= 10;
    return _dinheiro;
  }

  String? _nomeSecreto = 'Flutter';

  get nomeSecreto {
    String? nome = _nomeSecreto;
    if (nome != null) {
      _nomeSecreto = null;
      return nome;
    } else {
      return null;
    }
  }

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
