part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required EmailAddress emailAddress,
    required Password password,
    required ConfirmPassword confirmPassword,
    required AutovalidateMode autovalidateMode,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        emailAddress: EmailAddress(''),
        password: Password(''),
        confirmPassword: ConfirmPassword('', ''),
        autovalidateMode: AutovalidateMode.disabled,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
