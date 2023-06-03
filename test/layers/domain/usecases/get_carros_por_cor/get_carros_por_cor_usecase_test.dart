import 'package:flutter_test/flutter_test.dart';
import 'package:teste_clean_arquitecture/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:teste_clean_arquitecture/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:teste_clean_arquitecture/layers/domain/entities/carro_entity.dart';
import 'package:teste_clean_arquitecture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_imp.dart';
import 'package:teste_clean_arquitecture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';

void main() {
  test('Espero que devolva uma entidade Carro de acordo com a cor', () {
    GetCarrosPorCorUseCase useCase = GetCarrosPorCorUseCaseImp(
        GetCarrosPorCorRepositoryImp(GetCarrosPorCorLocalDataSourceImp()));

    var request = useCase('azul');
    var result;
    request.fold((l) => result = l, (r) =>  result=r);

    expect(result, isInstanceOf<CarroEntity>());
  });
}
