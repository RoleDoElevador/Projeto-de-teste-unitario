import 'package:dartz/dartz.dart';
import 'package:teste_clean_arquitecture/layers/domain/entities/carro_entity.dart';

abstract class SalvarCarroFavoritoRepository{
Future<Either<Exception, bool>> call(CarroEntity carro);
}
