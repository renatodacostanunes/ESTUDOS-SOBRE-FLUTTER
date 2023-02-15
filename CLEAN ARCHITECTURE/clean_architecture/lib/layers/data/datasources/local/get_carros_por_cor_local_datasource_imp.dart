import 'package:clean_architecture/layers/data/dtos/carro_dto.dart';
import 'package:dartz/dartz.dart';

import '../get_carros_por_cor_datasource.dart';

class GetCarrosPorCorLocalDatasourceImp implements GetCarrosPorCorDataSource {
  final jsonVermelho = {
    "placa": "ABC123",
    "quantidadeDePortas": 4,
    "valorFinal": 5000.00,
  };

  final jsonAny = {
    "placa": "QWE",
    "quantidadeDePortas": 2,
    "valorFinal": 2000.00,
  };

  @override
  Either<Exception, CarroDto> call(String cor) {
    try {
      if (cor.contains("vermelho")) {
        return Right(CarroDto.fromMap(jsonVermelho));
      }
      return Right(CarroDto.fromMap(jsonAny));
    } catch (e) {
      return Left(Exception("Error in datasource"));
    }
  }
}
