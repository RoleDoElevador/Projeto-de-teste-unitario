import 'package:flutter_test/flutter_test.dart';
import 'package:teste_clean_arquitecture/layers/data/datasources/local/get_carros_por_quantidade_datasource_imp.dart';
import 'package:teste_clean_arquitecture/layers/data/repositories/get_carros_por_quantidade_portas_imp.dart';

import 'package:teste_clean_arquitecture/layers/domain/entities/carro_entity.dart';
import 'package:teste_clean_arquitecture/layers/domain/usecases/get_carros_por_quantidade_portas/get_carros_por_quantidade_portas_imp.dart';
import 'package:teste_clean_arquitecture/layers/domain/usecases/get_carros_por_quantidade_portas/get_carros_por_quantidade_portas_usecase.dart';

void main() {
  test('Espero que devolva uma entidade Carro de acordo com a quantidade de portas inseridas', () {
    GetCarrosPorQtdPortasUseCase useCase = GetCarrosPorQuantidadePortasImp(
        GetCarrosPorQuantidadePortasRepositoryImp(GetCarrosPorQuantidadePortasLocalDataSourceImp()));

    var request = useCase(3);
    var result;

    request.fold((l) => result = l, (r) =>  result=r);

    expect(result, isInstanceOf<CarroEntity>());
  });
}