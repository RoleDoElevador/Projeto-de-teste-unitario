import 'carro_entity.dart';

class ConcessionariaEntity {
  String nome;
  List<CarroEntity> carros;

  ConcessionariaEntity({required this.nome, required this.carros});

  bool ContemCarrosEmEstoque() {
    return carros.isNotEmpty;
  }
}
