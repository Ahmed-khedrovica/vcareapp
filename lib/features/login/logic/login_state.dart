import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@Freezed()
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _LoginInitial<T>;

  const factory LoginState.loading() = LoginLoading<T>;

  const factory LoginState.success(T data) = LoginSuccess<T>;

  const factory LoginState.error({required String errorMessage}) = Error;
}
