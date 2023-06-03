import 'package:dartz/dartz.dart';
import 'package:teste_clean_arquitecture/layers/data/datasources/get_carros_por_quantidade_datasource.dart';
import 'package:teste_clean_arquitecture/layers/data/dtos/carro_dto.dart';
import 'package:teste_clean_arquitecture/layers/domain/repositories/get_carros_por_quatidade_portas_repository.dart';

class GetCarrosPorQuantidadePortasRepositoryImp implements GetCarrosPorQtdPortasRepository {
  final GetCarrosPorQuantidadePortasDataSource _getCarrosPorQuantidadePortasDataSource;
  GetCarrosPorQuantidadePortasRepositoryImp(this._getCarrosPorQuantidadePortasDataSource);

  @override
  Either<Exception, CarroDto> call(int qtdPortas) {
    return _getCarrosPorQuantidadePortasDataSource(qtdPortas);
  }
}
