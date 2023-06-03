import 'package:teste_clean_arquitecture/layers/domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  @override
  String placa;
  int quantidadeDePortas;
  double valorFinal;
  @override
  String cor;

  CarroDto({
    required this.placa,
    required this.quantidadeDePortas,
    required this.valorFinal,
    required this.cor,
  }) : super(
          placa: placa,
          qtdPortas: quantidadeDePortas,
          valor: valorFinal,
          cor: cor,
        );
  toJson() {
    return {
      'placa': placa,
      'quantidadeDePortas': quantidadeDePortas,
      'valorFinal': valorFinal,
      'cor': cor
    };
  }

 static CarroDto fromMap(Map map) {
    return CarroDto(
        placa: map['placa'],
        quantidadeDePortas: map['quantidadeDePortas'],
        valorFinal: map['valorFinal'],
        cor: map['cor']);
  }
}
