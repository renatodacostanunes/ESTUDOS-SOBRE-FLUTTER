import 'package:clean_arch_with_bloc/src/modules/home/domain/entities/user.dart';
import 'package:clean_arch_with_bloc/src/modules/home/infra/repositories/user_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../domain/mocks/mock_users.dart';
import '../../domain/usecases/get_users_test.mocks.dart';

void main() {
  late UserRepositoryImpl usecase;

  setUpAll(() {
    usecase = UserRepositoryImpl(MockUserDataSource());
  });

  group('Tests Infra repository', () {
    test('Should return a Future<List<User>> when getUsers return Right', () async {
      when(usecase.userDataSource.getUsers()).thenAnswer((_) async => users);
      List<User> result = await usecase.userDataSource.getUsers();
      expect(result, isInstanceOf<List<User>>());
      expect(result.length, 1);
    });
  });
}
