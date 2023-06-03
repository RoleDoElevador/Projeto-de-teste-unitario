import 'package:dartz/dartz.dart';
import 'package:teste_clean_arquitecture/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:teste_clean_arquitecture/layers/data/dtos/carro_dto.dart';
import 'package:teste_clean_arquitecture/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDataSource _getCarrosPorCorDataSource;
  GetCarrosPorCorRepositoryImp(this._getCarrosPorCorDataSource);

  @override
  Either<Exception, CarroDto> call(String cor) {
    return _getCarrosPorCorDataSource(cor);
  }
}
