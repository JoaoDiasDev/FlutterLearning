enum StatusPagamento { pendente, pago, reembolsado }

void main() {
  StatusPagamento status = StatusPagamento.pago;
  switch (status) {
    case StatusPagamento.pendente:
      // TODO: Handle this case.
      break;
    case StatusPagamento.pago:
      // TODO: Handle this case.
      break;
    case StatusPagamento.reembolsado:
      // TODO: Handle this case.
      break;
  }
  print(status.name);
  print(StatusPagamento.values[1]);
}
