import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:success_check/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:success_check/presentation/auth/widgets/accent_button.dart';
import 'package:success_check/presentation/auth/widgets/back_to_login_link.dart';
import 'package:success_check/presentation/auth/widgets/email_field.dart';
import 'package:success_check/presentation/core/error_flushbar.dart';
import 'package:success_check/presentation/routes/app_router.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: _listenToAuthFailure,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 60),
          child: Form(
            autovalidateMode: state.autovalidateMode,
            child: Column(
              children: [
                const EmailField(),
                const SizedBox(height: 25),
                AccentButton(
                  text: 'Reset Password',
                  onPressed: () => context
                      .read<SignInFormBloc>()
                      .add(const SignInFormEvent.resetPasswordPressed()),
                ),
                if (state.isSubmitting) ...[
                  const SizedBox(
                    height: 20,
                  ),
                  const LinearProgressIndicator(),
                ],
                const SizedBox(height: 25),
                const BackToLoginLink(),
              ],
            ),
          ),
        );
      },
    );
  }

  void _listenToAuthFailure(BuildContext context, SignInFormState state) {
    state.authFailureOrSuccessOption.fold(
      () {},
      (either) => either.fold(
        (failure) {
          final errorMessage = failure.maybeMap(
            userNotFound: (_) => 'User with this email was not found',
            serverError: (_) => 'Server error. Please try again later.',
            orElse: () => 'Authentication error. Please contact support.',
          );
          ErrorFlushbar(
            message: errorMessage,
            context: context,
          ).show();
        },
        (_) => AutoRouter.of(context).push(
          PasswordResetConfirmationRoute(
            emailAddress: state.emailAddress.getOrCrash(),
          ),
        ),
      ),
    );
  }
}
