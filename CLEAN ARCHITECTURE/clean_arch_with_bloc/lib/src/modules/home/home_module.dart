import 'package:clean_arch_with_bloc/src/core/shared/services/http/http.dart';
import 'package:clean_arch_with_bloc/src/core/shared/services/http/http_impl.dart';
import 'package:clean_arch_with_bloc/src/modules/home/domain/repositories/user_repository.dart';
import 'package:clean_arch_with_bloc/src/modules/home/domain/usecases/get_users.dart';
import 'package:clean_arch_with_bloc/src/modules/home/infra/repositories/user_repository_impl.dart';
import 'package:clean_arch_with_bloc/src/modules/home/presentation/pages/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'external/datasources/user_datasource_impl.dart';
import 'infra/datasources/user_datasource.dart';
import 'presentation/blocs/user/user_bloc.dart';

class HomeModule extends Module {
  final List<Bind> _blocs = [
    Bind.singleton((i) => UserBloc(i.get<GetUsersUseCaseImpl>())),
    Bind.singleton((i) => HttpImpl()),
  ];

  final List<Bind> _useCases = [
    Bind.factory((i) => GetUsersUseCaseImpl(i.get<UserRepository>())),
  ];

  final List<Bind> _repositories = [
    Bind.factory((i) => UserRepositoryImpl(i.get<UserDataSource>())),
  ];

  final List<Bind> _dataSources = [
    Bind.factory((i) => UserDataSourceImpl(i.get<IHttpService>())),
  ];

  @override
  List<Bind> get binds => _blocs + _useCases + _repositories + _dataSources;

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          Modular.initialRoute,
          child: (context, args) => const HomePage(),
        ),
      ];
}
