part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState.initial() = _UserStateInitial;
  const factory UserState.loading() = _UserStateLoading;
  const factory UserState.success(List<User> users) = _UserStateSuccess;
  const factory UserState.failure(String message) = _UserStateFailure;
}
