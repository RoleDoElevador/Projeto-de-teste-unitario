import 'package:dartz/dartz.dart';
import 'package:teste_clean_arquitecture/layers/domain/entities/carro_entity.dart';

abstract class GetCarrosPorCorUseCase {
  Either<Exception,CarroEntity> call(String cor);
}
