import 'package:dartz/dartz.dart';
import 'package:teste_clean_arquitecture/layers/data/datasources/get_carros_por_quantidade_datasource.dart';

import '../../dtos/carro_dto.dart';

class GetCarrosPorQuantidadePortasLocalDataSourceImp implements GetCarrosPorQuantidadePortasDataSource {
  final jsonTeste1 = {
    'placa': 'ADASDASD-0102',
    'quantidadeDePortas': 3,
    'valorFinal': 50.000,
    'cor': 'azul'
  };
  final jsonTeste2 = {
    'placa': 'AAAAA',
    'quantidadeDePortas': 2,
    'valorFinal': 10.000,
    'cor': 'vermelho'
  };
  @override
  Either<Exception, CarroDto> call(int qtdPortas) {
    try {
      if (qtdPortas == 3) {
        return Right(CarroDto.fromMap(jsonTeste1));
      } else {
        return Right(CarroDto.fromMap(jsonTeste2));
      }
    } catch (e) {
      return Left(Exception('data source falhou'));
    }
  }
}