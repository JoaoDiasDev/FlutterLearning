void main() {
  try {
    int resultado = 100 ~/ 2;
    print(resultado);
    double? valor = double.tryParse('50.2a');
    print(valor);
  } on UnsupportedError catch (e) {
    print('Unsupported aqui $e');
  } on FormatException catch (e) {
    print('FormatExecption aqui $e');
  } catch (e) {
    print(e);
  } finally {
    print('Final');
  }
}
