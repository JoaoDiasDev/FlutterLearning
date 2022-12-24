//operador cascata feito para concatenar as multiplas operações: ex nomes..add('fulano')

void main() {
  List<String> nomes = [];

  nomes
    ..add('Dias')
    ..add('Joao')
    ..add('Amanda')
    ..remove('Joao');

  print(nomes);
}

List<String> funcao(List<String> lista) {
  return lista
    ..add('Dias')
    ..add('Joao')
    ..add('Amanda')
    ..remove('Joao');
}
