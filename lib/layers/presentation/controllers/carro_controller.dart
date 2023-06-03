import 'package:teste_clean_arquitecture/layers/domain/entities/carro_entity.dart';
import 'package:teste_clean_arquitecture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:teste_clean_arquitecture/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';

class CarroController {
  final GetCarrosPorCorUseCase _getCarrosPorCorUseCase;
  final SalvarCarroFavoritoUseCase _salvarCarroFavoritoUseCase;

  CarroController(
    this._getCarrosPorCorUseCase,
    this._salvarCarroFavoritoUseCase,
  ) {
    getCarroPorCor('vemelho');
  }

  late CarroEntity carro;

  getCarroPorCor(String cor) {
    var result = _getCarrosPorCorUseCase(cor);
    result.fold((error) => print('erro'), (sucess) => carro = sucess);
  }

  Future<bool> salvarCarroFavorito(CarroEntity carro) async {
    var resultado = await _salvarCarroFavoritoUseCase(carro);
    return resultado.fold((l) => true, (r) => false);
  }
}
