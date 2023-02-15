import 'package:clean_arch_with_bloc/src/core/error/failures.dart';
import 'package:clean_arch_with_bloc/src/modules/home/domain/entities/user.dart';

List<User> users = [
  const User(id: 1, name: 'Renato', username: 'renato.raro', email: 'renato.raro@rarolabs.com.br'),
];

var failure = const ServerFailure(message: 'Ocorreu um erro no sistema');
