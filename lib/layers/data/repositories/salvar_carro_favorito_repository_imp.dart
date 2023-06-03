import 'package:dartz/dartz.dart';

import '../../domain/entities/carro_entity.dart';
import '../../domain/repositories/salvar_carro_favorito_repository.dart';

class SalvarCarroFavoritoRepositoryImp
    implements SalvarCarroFavoritoRepository {
  @override
  Future<Either<Exception,bool>> call(CarroEntity carro) async {
    try {
      return Right(carro.valor > 0);
    } catch (e) {
      return Left(Exception('repository erro'));
    }
  }
}
