import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';

@Freezed()
class SignupState<T> with _$SignupState<T> {
  const factory SignupState.initial() = _SignupInitial<T>;

  const factory SignupState.loading() = SignupLoading<T>;

  const factory SignupState.success(T data) = SignupSuccess<T>;

  const factory SignupState.error({required String errorMessage}) = Error;
}
