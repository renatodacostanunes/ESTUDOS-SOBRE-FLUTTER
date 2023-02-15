// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  String placa;
  int quantidadeDePortas;
  double valorFinal;
  CarroDto({
    required this.placa,
    required this.quantidadeDePortas,
    required this.valorFinal,
  }) : super(
          valor: valorFinal,
          qtdPortas: quantidadeDePortas,
          placa: placa,
        );

  Map toMap() {
    return {
      "placa": this.placa,
      "quantidadeDePortas": this.quantidadeDePortas,
      "valorFinal": this.valorFinal,
    };
  }

  factory CarroDto.fromMap(Map map) {
    return CarroDto(
      placa: map["placa"],
      quantidadeDePortas: map["quantidadeDePortas"],
      valorFinal: map["valorFinal"],
    );
  }
}
