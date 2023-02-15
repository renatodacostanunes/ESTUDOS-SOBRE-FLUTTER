import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user.dart';
import '../../../domain/usecases/get_users.dart';

part 'user_bloc.freezed.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUsersUseCaseImpl getUsersUseCase;
  UserBloc(this.getUsersUseCase) : super(const UserState.initial()) {
    on<GetUsers>(_getUsersEvent);
  }

  void _getUsersEvent(
    GetUsers event,
    Emitter<UserState> emit,
  ) async {
    emit(const UserState.loading());
    await Future.delayed(const Duration(seconds: 1));
    var users = await getUsersUseCase();

    users.fold(
      (failure) => UserState.failure(failure.message),
      (success) => emit(UserState.success(success)),
    );
  }
}
