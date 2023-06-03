import 'package:dartz/dartz.dart';
import 'package:teste_clean_arquitecture/layers/data/dtos/carro_dto.dart';

abstract class GetCarrosPorCorRepository {

 Either<Exception,CarroDto> call(String cor);


}
