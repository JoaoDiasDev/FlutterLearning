void main() {
  RepositorioPessoasRemote repo = RepositorioPessoasRemote();
  repo.ler(10);
  repo.adicionar('Dias');
  repo.apagar(5);
  repo.apagarTodos();
}

abstract class RepositorioPessoas {
  String ler(int i);
  void adicionar(String nome);
  void apagar(int i);
  void apagarTodos();
}

class RepositorioPessoasRemote implements RepositorioPessoas {
  @override
  void adicionar(String nome) {
    // TODO: implement adicionar
  }

  @override
  void apagar(int i) {
    // TODO: implement apagar
  }

  @override
  String ler(int i) {
    // TODO: implement ler
    return 'Dias';
  }

  @override
  void apagarTodos() {
    // TODO: implement apagarTodos
  }
}

class RepositorioPessoasLocal implements RepositorioPessoas {
  @override
  void adicionar(String nome) {
    // TODO: implement adicionar
  }

  @override
  void apagar(int i) {
    // TODO: implement apagar
  }

  @override
  String ler(int i) {
    // TODO: implement ler
    return 'João';
  }

  @override
  void apagarTodos() {
    // TODO: implement apagarTodos
  }
}
