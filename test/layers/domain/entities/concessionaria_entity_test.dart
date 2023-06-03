import 'package:flutter_test/flutter_test.dart';
import 'package:teste_clean_arquitecture/layers/domain/entities/carro_entity.dart';
import 'package:teste_clean_arquitecture/layers/domain/entities/concessionaria.dart';

void main() {
  test('Espero que a concessionaria possua carros no estoque', () {
    ConcessionariaEntity hyundaiEntity = ConcessionariaEntity(
      carros: [],
      nome: "Hyundai",
    );

    expect(false, hyundaiEntity.ContemCarrosEmEstoque());
  });
}
