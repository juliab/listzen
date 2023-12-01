import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:listzen/domain/auth/auth_failure.dart';
import 'package:listzen/domain/auth/i_auth_facade.dart';
import 'package:listzen/domain/auth/value_objects.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<EmailChanged>((event, emit) async {
      emit(
        state.copyWith(
          emailAddress: EmailAddress(event.emailStr),
          authFailureOrSuccessOption: none(),
        ),
      );
    });

    on<PasswordChanged>((event, emit) async {
      emit(
        state.copyWith(
          password: Password(event.passwordStr),
          confirmPassword: ConfirmPassword(
              state.confirmPassword.value.fold((f) => f.failedValue, (r) => r),
              event.passwordStr),
          authFailureOrSuccessOption: none(),
        ),
      );
    });

    on<ConfirmPasswordChanged>((event, emit) async {
      emit(
        state.copyWith(
          confirmPassword: ConfirmPassword(event.passwordStr,
              state.password.value.fold((f) => f.failedValue, (r) => r)),
          authFailureOrSuccessOption: none(),
        ),
      );
    });

    on<RegisterWithEmailAndPasswordPressed>((event, emit) async {
      Option<Either<AuthFailure, Unit>> failureOrSuccess = none();

      final isEmailValid = state.emailAddress.isValid();
      final isPasswordValid = state.password.isValid();
      final isConfirmPasswordValid = state.confirmPassword.isValid();

      if (isEmailValid && isPasswordValid && isConfirmPasswordValid) {
        emit(
          state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          ),
        );

        failureOrSuccess = some(
          await _authFacade.registerWithEmailAndPassword(
            emailAddress: state.emailAddress,
            password: state.password,
          ),
        );
      }

      emit(
        state.copyWith(
          isSubmitting: false,
          autovalidateMode: AutovalidateMode.always,
          authFailureOrSuccessOption: failureOrSuccess,
        ),
      );
    });

    on<SignInWithEmailAndPasswordPressed>((event, emit) async {
      Option<Either<AuthFailure, Unit>> failureOrSuccess = none();

      final isEmailValid = state.emailAddress.isValid();
      final isPasswordValid = state.password.isValid();

      if (isEmailValid && isPasswordValid) {
        emit(
          state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          ),
        );

        failureOrSuccess = some(
          await _authFacade.signInWithEmailAndPassword(
            emailAddress: state.emailAddress,
            password: state.password,
          ),
        );
      }

      emit(
        state.copyWith(
          isSubmitting: false,
          autovalidateMode: AutovalidateMode.always,
          authFailureOrSuccessOption: failureOrSuccess,
        ),
      );
    });

    on<ReloginWithPasswordPressed>((event, emit) async {
      Option<Either<AuthFailure, Unit>> failureOrSuccess = none();

      final isPasswordValid = state.password.isValid();

      if (isPasswordValid) {
        emit(
          state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          ),
        );

        failureOrSuccess = some(
          await _authFacade.reauthenticateWithPassword(
            password: state.password,
          ),
        );
      }

      emit(
        state.copyWith(
          isSubmitting: false,
          autovalidateMode: AutovalidateMode.always,
          authFailureOrSuccessOption: failureOrSuccess,
        ),
      );
    });

    on<SignInWithGooglePressed>((event, emit) async {
      emit(
        state.copyWith(
          autovalidateMode: AutovalidateMode.disabled,
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ),
      );
      final failureOrSuccess = some(await _authFacade.signInWithGoogle());
      emit(
        state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: failureOrSuccess,
        ),
      );
    });

    on<ReloginWithGooglePressed>((event, emit) async {
      Option<Either<AuthFailure, Unit>> failureOrSuccess = none();

      emit(
        state.copyWith(
          autovalidateMode: AutovalidateMode.disabled,
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ),
      );

      failureOrSuccess = some(await _authFacade.reauthenticateWithGoogle());

      emit(
        state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: failureOrSuccess,
        ),
      );
    });

    on<SignInWithApplePressed>((event, emit) async {
      emit(
        state.copyWith(
          autovalidateMode: AutovalidateMode.disabled,
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ),
      );
      final failureOrSuccess = some(await _authFacade.signInWithApple());
      emit(
        state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: failureOrSuccess,
        ),
      );
    });

    on<ReloginWithApplePressed>((event, emit) async {
      Option<Either<AuthFailure, Unit>> failureOrSuccess = none();

      emit(
        state.copyWith(
          autovalidateMode: AutovalidateMode.disabled,
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ),
      );

      failureOrSuccess = some(await _authFacade.reauthenticateWithApple());

      emit(
        state.copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: failureOrSuccess,
        ),
      );
    });

    on<ResetPasswordPressed>((event, emit) async {
      Option<Either<AuthFailure, Unit>> failureOrSuccess = none();

      if (state.emailAddress.isValid()) {
        emit(
          state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          ),
        );

        failureOrSuccess = some(
          await _authFacade.getResetPasswordEmail(
            emailAddress: state.emailAddress,
          ),
        );
      }

      emit(
        state.copyWith(
          isSubmitting: false,
          autovalidateMode: AutovalidateMode.always,
          authFailureOrSuccessOption: failureOrSuccess,
        ),
      );
    });
  }
}
