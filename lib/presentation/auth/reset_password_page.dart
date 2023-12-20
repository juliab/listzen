import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:listzen/injection.dart';
import 'package:listzen/presentation/auth/widgets/accent_button.dart';
import 'package:listzen/presentation/auth/widgets/auth_form_container.dart';
import 'package:listzen/presentation/auth/widgets/auth_page_scaffold.dart';
import 'package:listzen/presentation/auth/widgets/back_to_route_link.dart';
import 'package:listzen/presentation/auth/widgets/email_field.dart';
import 'package:listzen/presentation/core/error_flushbar.dart';
import 'package:listzen/presentation/routes/app_router.dart';

@RoutePage()
class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignInFormBloc>(
      create: (context) => getIt<SignInFormBloc>(),
      child: const AuthPageScaffold(
        form: ResetPasswordForm(),
      ),
    );
  }
}

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: _listenToAuthFailure,
      builder: (context, state) {
        return AuthFormContainer(
          form: Form(
            autovalidateMode: state.autovalidateMode,
            child: Column(
              children: [
                const BackToRouteLink(
                  text: 'Back to login',
                  routeName: SignInRoute.name,
                  alignment: MainAxisAlignment.start,
                ),
                const SizedBox(height: 30.0),
                const EmailField(
                  showValidationError: false,
                ),
                const SizedBox(height: 25),
                AccentButton(
                  text: 'Reset Password',
                  onPressed: () {
                    FocusManager.instance.primaryFocus?.unfocus();
                    context
                        .read<SignInFormBloc>()
                        .add(const SignInFormEvent.resetPasswordPressed());
                  },
                ),
                if (state.isSubmitting) ...[
                  const SizedBox(
                    height: 20,
                  ),
                  const LinearProgressIndicator(),
                ],
                const SizedBox(height: 30),
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
