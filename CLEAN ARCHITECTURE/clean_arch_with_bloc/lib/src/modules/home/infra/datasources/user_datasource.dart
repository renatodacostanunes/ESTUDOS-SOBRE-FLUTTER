import '../../domain/entities/user.dart';

abstract class UserDataSource {
  Future<List<User>> getUsers();
}
