// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:clean_arch_with_bloc/src/core/shared/services/http/http.dart';

import '../../domain/entities/user.dart';
import '../../infra/datasources/user_datasource.dart';
import '../../infra/models/user_model.dart';

class UserDataSourceImpl implements UserDataSource {
  final String url = 'https://jsonplaceholder.typicode.com/users';
  final IHttpService service;

  UserDataSourceImpl(this.service);

  @override
  Future<List<User>> getUsers() async {
    var response = await service.get(url);

    if (response.statusCode == 200) {
      List<User> listUsers = response.data.map((e) => UserModel.fromMap(e)).toList();
      return listUsers;
    } else {
      throw Exception();
    }
  }
}

// TROCAR FACILMENTE DIO POR HTTP OKAY 
// TRATAR CORRETAMENTE OS ERROS
// TESTAR AS CAMADAS DO CLEAN
