import 'carro_entity.dart';

class ConcessionariaEntity {

  String nome;
  List<CarroEntity> carros;

  ConcessionariaEntity(this.nome, this.carros);


  bool ContemCarrosEmEstoque() {
    return carros.isNotEmpty;
  }
}