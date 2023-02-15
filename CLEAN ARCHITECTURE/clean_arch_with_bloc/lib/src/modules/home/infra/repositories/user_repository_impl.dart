import 'package:clean_arch_with_bloc/src/core/error/failures.dart';
import 'package:clean_arch_with_bloc/src/modules/home/domain/entities/user.dart';
import 'package:clean_arch_with_bloc/src/modules/home/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';

import '../datasources/user_datasource.dart';

class UserRepositoryImpl extends UserRepository {
  final UserDataSource userDataSource;

  UserRepositoryImpl(this.userDataSource);

  @override
  Future<Either<Failure, List<User>>> getUsers() async {
    try {
      final response = await userDataSource.getUsers();
      return Right(response);
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
