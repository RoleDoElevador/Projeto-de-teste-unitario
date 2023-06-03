import 'package:dartz/dartz.dart';
import 'package:teste_clean_arquitecture/layers/domain/repositories/get_carros_por_quatidade_portas_repository.dart';
import 'package:teste_clean_arquitecture/layers/domain/usecases/get_carros_por_quantidade_portas/get_carros_por_quantidade_portas_usecase.dart';

import '../../entities/carro_entity.dart';

class GetCarrosPorQuantidadePortasImp implements GetCarrosPorQtdPortasUseCase {
  final GetCarrosPorQtdPortasRepository _getCarrosPorQtdPortaRepository;
  GetCarrosPorQuantidadePortasImp(this._getCarrosPorQtdPortaRepository);

  @override
  Either<Exception,CarroEntity> call(int qtdPortas) {
    return _getCarrosPorQtdPortaRepository(qtdPortas);
  }
}