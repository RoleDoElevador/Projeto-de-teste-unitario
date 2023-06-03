import 'package:dartz/dartz.dart';

import '../dtos/carro_dto.dart';

abstract class GetCarrosPorQuantidadePortasDataSource {
  Either<Exception, CarroDto> call(int qtdPortas);
}