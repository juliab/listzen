import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:listzen/presentation/auth/theming/style.dart';
import 'package:listzen/presentation/auth/widgets/accent_button.dart';
import 'package:listzen/presentation/auth/widgets/back_to_route_link.dart';
import 'package:listzen/presentation/auth/widgets/email_field.dart';
import 'package:listzen/presentation/core/error_flushbar.dart';
import 'package:listzen/presentation/routes/app_router.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: _listenToAuthFailure,
      builder: (context, state) {
        return Container(
          height: 350,
          decoration: formDecoration,
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 60, top: 40),
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
                const BackToRouteLink(
                  text: 'Back to login',
                  routeName: SignInRoute.name,
                ),
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
            title: 'Error',
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
