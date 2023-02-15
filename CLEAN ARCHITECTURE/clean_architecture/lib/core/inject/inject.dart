import 'package:clean_architecture/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_architecture/layers/data/datasources/local/get_carros_por_cor_local_datasource_imp.dart';
import 'package:clean_architecture/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:clean_architecture/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:clean_architecture/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:clean_architecture/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:clean_architecture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase.dart';
import 'package:clean_architecture/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor_usecase_imp.dart';
import 'package:clean_architecture/layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:clean_architecture/layers/presentation/controllers/carro_controller.dart';
import 'package:get_it/get_it.dart';

import '../../layers/domain/usecases/salvar_carro_favorito/salvar_carro_favorito_usecase_imp.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    // datasources
    getIt.registerLazySingleton<GetCarrosPorCorDataSource>(
        () => GetCarrosPorCorLocalDatasourceImp());
    // Estou dizendo que vou criar uma instância de GetCarrosPorCorLocalDatasourceImp
    // de forma lazy (somente quando for chamada...)
    // GetCarrosPorCorDataSource é o meu contrato, por isso devo colocar o tipo...

    // repositories
    getIt.registerLazySingleton<GetCarrosPorCorRepository>(
        () => GetCarrosPorCorRepositoryImp(getIt()));

    // aqui a mesma coisa, porém GetCarrosPorCorRepositoryImp precisa de um parâmetro
    // GetCarrosPorCorDataSource que eu estou passando através do getIt()...

    getIt.registerLazySingleton<SalvarCarroFavoritoRepository>(
        () => SalvarCarroFavoritoRepositoryImp());

    //usecases
    getIt.registerLazySingleton<GetCarrosPorCorUseCase>(
        () => GetCarrosPorCorUseCaseImp(getIt()));

    getIt.registerLazySingleton<SalvarCarroFavoritoUseCase>(
        () => SalvarCarroFavoritoUseCaseImp(getIt()));

    // controllers
    getIt.registerFactory<CarroController>(
        () => CarroController(getIt(), getIt()));
    // irá criar sempre uma instãncia nova do meu Controller... diferente do singleton :D
  }

  /* final CarroController controller = CarroController(
    GetCarrosPorCorUseCaseImp(
      GetCarrosPorCorRepositoryImp(
        GetCarrosPorCorLocalDatasourceImp(),
      ),
    ),
    SalvarCarroFavoritoUseCaseImp(
      SalvarCarroFavoritoRepositoryImp(),
    ),
  ); */
}
