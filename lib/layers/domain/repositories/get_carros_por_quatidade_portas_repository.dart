import 'package:dartz/dartz.dart';
import '../../data/dtos/carro_dto.dart';

abstract class GetCarrosPorQtdPortasRepository {
  Either<Exception,CarroDto> call(int QtdPortas);
}