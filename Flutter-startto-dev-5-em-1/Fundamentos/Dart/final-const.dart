// const atribui o valor a variável em tempo de compilação e é imutável
// final atribui o valor a variável em tempo de execução e é imutável

void main() {
  const String nome = 'Joao';
  const int idade = 50 + 30;
  const lista = ['Joao', 'Dias'];

  final DateTime agora = DateTime.now();
  // agora = DateTime.now(); // erro

  final String sobrenome;
  if (nome == 'Joao') {
    sobrenome = 'Dias';
  } else {
    sobrenome = 'Dale';
  }
  // sobrenome = 'ddodo'; // Error
}
