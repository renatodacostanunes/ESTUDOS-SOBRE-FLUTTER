import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/user.dart';

abstract class UserRepository {
  Future<Either<Failure, List<User>>> getUsers();
}

// O retorno deve ser o mesmo do meu usecase

// Tudo que for referente a usuários, eu posso colocar nessa mesma classe
// Por exemplo, deleteUsers, createUsers... Caso saia de usuário para outra coisa
// Ai devo criar um arquivo novo, pois devo seguir o princício de responsabilidade
// única do Solid
