void main() {
  Movel movel1 = Pessoa();
  movel1.frente();
  movel1.esquerda();

  Vendivel vend1 = Carro();
  print(vend1.preco());
}

class Geladeira implements Vendivel {
  @override
  double preco() {
    // TODO: implement preco
    return 1000;
  }
}

class Pessoa implements Movel {
  String? nome;

  @override
  void direita() {
    // TODO: implement direita
  }

  @override
  void esquerda() {
    // TODO: implement esquerda
  }

  @override
  void frente() {
    // TODO: implement frente
  }
}

class Carro implements Movel, Vendivel {
  String? modelo;

  @override
  void direita() {
    // TODO: implement direita
  }

  @override
  void esquerda() {
    // TODO: implement esquerda
  }

  @override
  void frente() {
    // TODO: implement frente
  }

  @override
  double preco() {
    // TODO: implement preco
    return 20000;
  }
}

abstract class Movel {
  void frente();
  void esquerda();
  void direita();
}

abstract class Vendivel {
  double preco();
}
