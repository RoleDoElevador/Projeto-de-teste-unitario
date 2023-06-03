import 'package:dartz/dartz.dart';
import 'package:teste_clean_arquitecture/layers/data/dtos/carro_dto.dart';

import '../get_carros_por_cor_datasource.dart';

class GetCarrosPorCorLocalDataSourceImp implements GetCarrosPorCorDataSource {
  // simulacao de consulta a API para verificar se o repository se comporta da maneira esperada

  final jsonTeste1 = {
    'placa': 'ADASDASD-0102',
    'quantidadeDePortas': 2,
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
  Either<Exception, CarroDto> call(String cor) {
    try {
      if (cor.contains("vermelho")) {
        return Right(CarroDto.fromMap(jsonTeste1));
      } else {
        return Right(CarroDto.fromMap(jsonTeste2));
      }
    } catch (e) {
      return Left(Exception('data source falhou'));
    }
  }
}
