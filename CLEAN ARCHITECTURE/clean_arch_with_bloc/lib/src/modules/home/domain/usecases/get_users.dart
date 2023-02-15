import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/user.dart';
import '../repositories/user_repository.dart';

class GetUsersUseCaseImpl implements UseCase<List<User>, NoParams> {
  final UserRepository userRepository;

  GetUsersUseCaseImpl(this.userRepository);

  @override
  Future<Either<Failure, List<User>>> call() async {
    return await userRepository.getUsers();
  }
}

// Para cada caso de uso eu devo ter um arquivo com uma classe nesse mesmo modelo
// Deve ser responsável somente por uma regra de negócio, e deve ter um 
// repositório para que esse repositório venha prover os dados de fora, como
// api, bd, etc...
