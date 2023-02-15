import 'package:clean_architecture/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_architecture/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:clean_architecture/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:clean_architecture/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  GetCarrosPorCorDataSource dataSource = GetCarrosPorCorLocalDatasourceImp();
  GetCarrosPorCorRepository repository =
      GetCarrosPorCorRepositoryImp(dataSource);

  test(
    "Devolva um carro independente da cor",
    () {
      var result = repository("qualquer");

      expect(result, isNotNull);
    },
  );
}
