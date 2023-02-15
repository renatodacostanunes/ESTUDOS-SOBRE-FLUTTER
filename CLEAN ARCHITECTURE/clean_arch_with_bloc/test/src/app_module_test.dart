import 'dart:convert';

import 'package:clean_arch_with_bloc/src/app_module.dart';
import 'package:clean_arch_with_bloc/src/modules/home/domain/entities/user.dart';
import 'package:clean_arch_with_bloc/src/modules/home/domain/usecases/get_users.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:modular_test/modular_test.dart';

class DioMock extends Mock implements Dio {}

void main() {
  var dio = DioMock();
  const String url = 'https://jsonplaceholder.typicode.com/users';
  initModule(AppModule(), replaceBinds: [
    Bind((i) => dio),
  ]);

  test(
    'deve executar o usecase get_users',
    () async {
      when(dio.get("")).thenAnswer(
        (_) async => Response(
          data: jsonDecode(jsonResponse),
          statusCode: 200,
          requestOptions: RequestOptions(path: url),
        ),
      );

      var usecase = Modular.get<GetUsersUseCaseImpl>();
      var result = await usecase();
      expect(result.isRight(), true);
      expect(result | [], isA<List<User>>());
    },
  );
}

var jsonResponse = r'''[
  {
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {"lat": "-37.3159", "lng": "81.1496"}
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    }
  }]''';
