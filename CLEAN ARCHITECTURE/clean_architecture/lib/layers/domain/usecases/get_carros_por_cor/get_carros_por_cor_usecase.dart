import 'package:clean_architecture/layers/domain/entities/carro_entity.dart';
import 'package:dartz/dartz.dart';

abstract class GetCarrosPorCorUseCase {
  Either<Exception, CarroEntity> call(String cor);
}
