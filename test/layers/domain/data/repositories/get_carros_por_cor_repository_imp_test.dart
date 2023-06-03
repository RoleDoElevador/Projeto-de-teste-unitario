import 'package:flutter_test/flutter_test.dart';
import 'package:teste_clean_arquitecture/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:teste_clean_arquitecture/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:teste_clean_arquitecture/layers/data/repositories/get_carros_por_cor_repository_imp.dart';

void main() {
  test("Espero que devolva um carro", () {
    GetCarrosPorCorDataSource dataSouce = GetCarrosPorCorLocalDataSourceImp();
    GetCarrosPorCorRepositoryImp repository =
        GetCarrosPorCorRepositoryImp(dataSouce);

    var resultado = repository;
    expect(resultado, isNotNull);
  });
}
