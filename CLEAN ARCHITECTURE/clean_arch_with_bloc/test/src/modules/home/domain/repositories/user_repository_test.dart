import 'package:clean_arch_with_bloc/src/core/error/failures.dart';
import 'package:clean_arch_with_bloc/src/modules/home/domain/entities/user.dart';
import 'package:clean_arch_with_bloc/src/modules/home/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../mocks/mock_users.dart';
import '../usecases/get_users_test.mocks.dart';

void main() {
  late UserRepository userRepository;

  setUpAll(() {
    // essa função roda antes dos testes começarem, é como se fosse um initState
    // essa classe MockUserRepository() representa a classe que faz a implementação
    // da minha UserRepository, porém mockada para facilitar...
    userRepository = MockUserRepository();

    // O motivo de usar o mockito, é para não ter que criar uma classe fake na mão,
    // implementar os métodos, com as respostas que queremos, dessa maneira é
    // muito mais rápido e fácil usar o mockito...
  });

  group('Testes User Repository', () {
    test('Should return list of Users when getUsers return Right', () async {
      // Aqui eu preparo o cenário que eu quero receber, no caso Right.
      when(userRepository.getUsers()).thenAnswer((_) async => Right(users));

      // Aqui eu tenho o resultado da minha função, que deve me retornar um
      // Right com uma List<Users>
      final result = await userRepository.getUsers();

      // Aqui eu espero que o meu fold, no caso r(Right), seja uma instância/tipo
      // List<User>, ou poderia ser a própria lista users também.
      expect(result.fold((l) => l, (r) => r), isInstanceOf<List<User>>());
      // Posso colocar direto o valor (users) que é a lista, para comparação,
      // ou posso colocar o tipo (instância) que nesse caso é List<User>
    });

    test('Should return a Failure when getUsers return Left', () async {
      when(userRepository.getUsers()).thenAnswer((_) async => Left(failure));
      final result = await userRepository.getUsers();
      result.fold((l) {
        expect(l, isInstanceOf<ServerFailure>());
        expect(l.message, 'Ocorreu um erro no sistema');
      }, (r) => expect(r, null));
    });
  });
}
