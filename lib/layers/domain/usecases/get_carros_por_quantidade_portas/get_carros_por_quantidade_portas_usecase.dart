import 'package:dartz/dartz.dart';
import '../../entities/carro_entity.dart';

abstract class GetCarrosPorQtdPortasUseCase {
  Either<Exception, CarroEntity> call(int qtdPortas);
}
