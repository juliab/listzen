// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:success_check/domain/auth/auth_failure.dart';
import 'package:success_check/domain/auth/i_auth_facade.dart';
import 'package:success_check/domain/auth/value_objects.dart';

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
          authFailureOrSuccessOption: none(),
        ),
      );
    });

    on<RegisterWithEmailAndPasswordPressed>((event, emit) async {
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

    on<SignInWithGooglePressed>((event, emit) async {
      emit(
        state.copyWith(
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
  }
}
