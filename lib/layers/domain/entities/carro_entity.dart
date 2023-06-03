class CarroEntity {
  String placa;
  int qtdPortas;
  double valor;
  String cor;

  CarroEntity({
    required this.placa,
    required this.qtdPortas,
    required this.valor,
    required this.cor,
  });

  double get valorReal {
    return valorReal * qtdPortas;
  }

  bool verificarPlacaValida() {
    if (placa.length == 7) {
      return true;
    } else {
      return false;
    }
  }
}
