import 'package:dartz/dartz.dart';
import 'package:teste_clean_arquitecture/layers/domain/entities/carro_entity.dart';
import 'package:teste_clean_arquitecture/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:teste_clean_arquitecture/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';

class SalvarCarroFavoritoImp implements SalvarCarroFavoritoUseCase {
  final SalvarCarroFavoritoRepository _salvarCarroFavoritoRepository;
  SalvarCarroFavoritoImp(this._salvarCarroFavoritoRepository);

  @override
  Future<Either<Exception, bool>> call(CarroEntity carro) async {
    try {
      if (carro.verificarPlacaValida()) {
        Either<Exception, bool> resultado =
            await _salvarCarroFavoritoRepository(carro);

        if (resultado.isRight()) {
          return const Right(true);
        } else {
          return Left(Exception());
        }
      } else {
        return Left(Exception());
      }
    } catch (e) {
      return Left(Exception());
    }
  }
}
