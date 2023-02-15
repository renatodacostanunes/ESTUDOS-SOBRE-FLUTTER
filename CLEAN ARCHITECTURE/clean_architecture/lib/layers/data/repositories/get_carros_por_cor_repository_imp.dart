import 'package:clean_architecture/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:dartz/dartz.dart';

import '../../domain/entities/carro_entity.dart';
import '../../domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDataSource _getCarrosPorCorDataSource;

  GetCarrosPorCorRepositoryImp(this._getCarrosPorCorDataSource);

  @override
  Either<Exception, CarroEntity> call(String cor) {
    return _getCarrosPorCorDataSource(cor);
  }
}
