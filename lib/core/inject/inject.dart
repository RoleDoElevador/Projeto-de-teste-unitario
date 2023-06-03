import 'package:get_it/get_it.dart';
import 'package:teste_clean_arquitecture/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:teste_clean_arquitecture/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:teste_clean_arquitecture/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:teste_clean_arquitecture/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:teste_clean_arquitecture/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:teste_clean_arquitecture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_imp.dart';
import 'package:teste_clean_arquitecture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:teste_clean_arquitecture/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_imp.dart';
import 'package:teste_clean_arquitecture/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:teste_clean_arquitecture/layers/presentation/controllers/carro_controller.dart';

import '../../layers/data/repositories/get_carros_por_cor_repository_imp.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    //datasource
    //registerLazySingleton é utilizado quando queremos que a mesma instancia seja usada sempre.
    getIt.registerLazySingleton<GetCarrosPorCorDataSource>(
        () => GetCarrosPorCorLocalDataSourceImp());

    //repositories
    getIt.registerLazySingleton<GetCarrosPorCorRepository>(
        () => GetCarrosPorCorRepositoryImp(getIt()));

    getIt.registerLazySingleton<SalvarCarroFavoritoRepository>(
        () => SalvarCarroFavoritoRepositoryImp());

    //usecases
    getIt.registerLazySingleton<GetCarrosPorCorUseCase>(
        () => GetCarrosPorCorUseCaseImp(getIt()));
    getIt.registerLazySingleton<SalvarCarroFavoritoUseCase>(
        () => SalvarCarroFavoritoImp(getIt()));

    //controllers
    //registeFactory  é utilizado quando queremos que gere uma nova instacia toda vez que for chamado.
    getIt.registerFactory<CarroController>(
        () => CarroController(getIt(), getIt()));
  }
}


