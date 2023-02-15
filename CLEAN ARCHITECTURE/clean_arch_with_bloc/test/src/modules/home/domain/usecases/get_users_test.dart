import 'package:clean_arch_with_bloc/src/modules/home/domain/repositories/user_repository.dart';
import 'package:clean_arch_with_bloc/src/modules/home/domain/usecases/get_users.dart';
import 'package:clean_arch_with_bloc/src/modules/home/infra/datasources/user_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../mocks/mock_users.dart';
import 'get_users_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<UserRepository>(),
  MockSpec<UserDataSource>(),
])
void main() {
  late GetUsersUseCaseImpl useCase;

  // Roda uma vez antes do teste começar.
  setUpAll(() {
    useCase = GetUsersUseCaseImpl(MockUserRepository());
  });

  group('Get Users Tests', () {
    test('Should return a list of User when repository return Right', () async {
      when(useCase.userRepository.getUsers()).thenAnswer((_) async => Right(users));
      final result = await useCase.call();
      result.fold((l) => expect(l, null), (r) => expect(r, users));
    });

    test('Should return a Failure when repository return Left', () async {
      when(useCase.userRepository.getUsers()).thenAnswer((_) async => Left(failure));
      final result = await useCase.call();
      result.fold((l) => expect(l, failure), (r) => expect(r, null));
    });
  });
}
