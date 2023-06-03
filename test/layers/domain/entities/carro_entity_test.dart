import 'package:flutter_test/flutter_test.dart';
import 'package:teste_clean_arquitecture/layers/domain/entities/carro_entity.dart';

void main() {
  test('Espero que placa do Carron não seja válida', () {
    CarroEntity carro =
        CarroEntity(placa: "SFSDF-123", qtdPortas: 2, valor: 12000,cor: "vermelho");

    expect(false, carro.verificarPlacaValida());
  });


}
