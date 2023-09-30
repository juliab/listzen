part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignInFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignInFormEvent.confirmPasswordChanged(String passwordStr) =
      ConfirmPasswordChanged;
  const factory SignInFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
  const factory SignInFormEvent.reloginWithPasswordPressed() =
      ReloginWithPasswordPressed;
  const factory SignInFormEvent.signInWithGooglePressed() =
      SignInWithGooglePressed;
  const factory SignInFormEvent.reloginWithGooglePressed() =
      ReloginWithGooglePressed;
  const factory SignInFormEvent.signInWithApplePressed() =
      SignInWithApplePressed;
  const factory SignInFormEvent.reloginWithApplePressed() =
      ReloginWithApplePressed;
  const factory SignInFormEvent.resetPasswordPressed() = ResetPasswordPressed;
}
