// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateInitial value) initial,
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateSuccess value) success,
    required TResult Function(_UserStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateInitial value)? initial,
    TResult? Function(_UserStateLoading value)? loading,
    TResult? Function(_UserStateSuccess value)? success,
    TResult? Function(_UserStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateSuccess value)? success,
    TResult Function(_UserStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserStateInitialCopyWith<$Res> {
  factory _$$_UserStateInitialCopyWith(
          _$_UserStateInitial value, $Res Function(_$_UserStateInitial) then) =
      __$$_UserStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserStateInitialCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserStateInitial>
    implements _$$_UserStateInitialCopyWith<$Res> {
  __$$_UserStateInitialCopyWithImpl(
      _$_UserStateInitial _value, $Res Function(_$_UserStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserStateInitial implements _UserStateInitial {
  const _$_UserStateInitial();

  @override
  String toString() {
    return 'UserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateInitial value) initial,
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateSuccess value) success,
    required TResult Function(_UserStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateInitial value)? initial,
    TResult? Function(_UserStateLoading value)? loading,
    TResult? Function(_UserStateSuccess value)? success,
    TResult? Function(_UserStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateSuccess value)? success,
    TResult Function(_UserStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UserStateInitial implements UserState {
  const factory _UserStateInitial() = _$_UserStateInitial;
}

/// @nodoc
abstract class _$$_UserStateLoadingCopyWith<$Res> {
  factory _$$_UserStateLoadingCopyWith(
          _$_UserStateLoading value, $Res Function(_$_UserStateLoading) then) =
      __$$_UserStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserStateLoadingCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserStateLoading>
    implements _$$_UserStateLoadingCopyWith<$Res> {
  __$$_UserStateLoadingCopyWithImpl(
      _$_UserStateLoading _value, $Res Function(_$_UserStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserStateLoading implements _UserStateLoading {
  const _$_UserStateLoading();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateInitial value) initial,
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateSuccess value) success,
    required TResult Function(_UserStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateInitial value)? initial,
    TResult? Function(_UserStateLoading value)? loading,
    TResult? Function(_UserStateSuccess value)? success,
    TResult? Function(_UserStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateSuccess value)? success,
    TResult Function(_UserStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _UserStateLoading implements UserState {
  const factory _UserStateLoading() = _$_UserStateLoading;
}

/// @nodoc
abstract class _$$_UserStateSuccessCopyWith<$Res> {
  factory _$$_UserStateSuccessCopyWith(
          _$_UserStateSuccess value, $Res Function(_$_UserStateSuccess) then) =
      __$$_UserStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<User> users});
}

/// @nodoc
class __$$_UserStateSuccessCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserStateSuccess>
    implements _$$_UserStateSuccessCopyWith<$Res> {
  __$$_UserStateSuccessCopyWithImpl(
      _$_UserStateSuccess _value, $Res Function(_$_UserStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$_UserStateSuccess(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
    ));
  }
}

/// @nodoc

class _$_UserStateSuccess implements _UserStateSuccess {
  const _$_UserStateSuccess(final List<User> users) : _users = users;

  final List<User> _users;
  @override
  List<User> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UserState.success(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserStateSuccess &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStateSuccessCopyWith<_$_UserStateSuccess> get copyWith =>
      __$$_UserStateSuccessCopyWithImpl<_$_UserStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) success,
    required TResult Function(String message) failure,
  }) {
    return success(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateInitial value) initial,
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateSuccess value) success,
    required TResult Function(_UserStateFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateInitial value)? initial,
    TResult? Function(_UserStateLoading value)? loading,
    TResult? Function(_UserStateSuccess value)? success,
    TResult? Function(_UserStateFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateSuccess value)? success,
    TResult Function(_UserStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _UserStateSuccess implements UserState {
  const factory _UserStateSuccess(final List<User> users) = _$_UserStateSuccess;

  List<User> get users;
  @JsonKey(ignore: true)
  _$$_UserStateSuccessCopyWith<_$_UserStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserStateFailureCopyWith<$Res> {
  factory _$$_UserStateFailureCopyWith(
          _$_UserStateFailure value, $Res Function(_$_UserStateFailure) then) =
      __$$_UserStateFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UserStateFailureCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserStateFailure>
    implements _$$_UserStateFailureCopyWith<$Res> {
  __$$_UserStateFailureCopyWithImpl(
      _$_UserStateFailure _value, $Res Function(_$_UserStateFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_UserStateFailure(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserStateFailure implements _UserStateFailure {
  const _$_UserStateFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UserState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserStateFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStateFailureCopyWith<_$_UserStateFailure> get copyWith =>
      __$$_UserStateFailureCopyWithImpl<_$_UserStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<User> users) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<User> users)? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> users)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserStateInitial value) initial,
    required TResult Function(_UserStateLoading value) loading,
    required TResult Function(_UserStateSuccess value) success,
    required TResult Function(_UserStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserStateInitial value)? initial,
    TResult? Function(_UserStateLoading value)? loading,
    TResult? Function(_UserStateSuccess value)? success,
    TResult? Function(_UserStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserStateInitial value)? initial,
    TResult Function(_UserStateLoading value)? loading,
    TResult Function(_UserStateSuccess value)? success,
    TResult Function(_UserStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _UserStateFailure implements UserState {
  const factory _UserStateFailure(final String message) = _$_UserStateFailure;

  String get message;
  @JsonKey(ignore: true)
  _$$_UserStateFailureCopyWith<_$_UserStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
