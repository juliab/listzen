import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:success_check/application/auth/auth_bloc.dart';
import 'package:success_check/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:success_check/presentation/auth/widgets/accent_button.dart';
import 'package:success_check/presentation/auth/widgets/email_field.dart';
import 'package:success_check/presentation/auth/widgets/error_flushbar.dart';
import 'package:success_check/presentation/auth/widgets/password_field.dart';
import 'package:success_check/presentation/auth/widgets/sign_in_with_google_button.dart';
import 'package:success_check/presentation/core/theming/themes.dart';
import 'package:success_check/presentation/routes/app_router.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold((failure) {
            final errorMessage = failure.maybeMap(
              cancelledByUser: (_) => 'Sign in cancelled',
              serverError: (_) => 'Server error. Please try again later.',
              invalidEmailAndPasswordCombination: (_) =>
                  'Invalid email and password combination',
              orElse: () => 'Authentication error. Please contact support.',
            );
            flushbar(errorMessage).show(context);
          }, (_) {
            AutoRouter.of(context).push(const ChecklistsOverviewRoute());
            BlocProvider.of<AuthBloc>(context)
                .add(const AuthEvent.authCheckRequested());
          }),
        );
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 60),
          child: Form(
            autovalidateMode: state.autovalidateMode,
            child: Column(
              children: [
                const EmailField(),
                const SizedBox(height: 25),
                const PasswordField(
                  showForgotPasswordLink: true,
                ),
                const SizedBox(height: 25),
                const AccentButton(
                  text: 'Login',
                  event: SignInFormEvent.signInWithEmailAndPasswordPressed(),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Expanded(child: Divider()),
                    const SizedBox(width: 10),
                    Text(
                      'or',
                      style: TextStyle(color: borderColor),
                    ),
                    const SizedBox(width: 10),
                    const Expanded(child: Divider()),
                  ],
                ),
                const SizedBox(height: 20),
                const SignInWithGoogleButton(),
                if (state.isSubmitting) ...[
                  const SizedBox(
                    height: 20,
                  ),
                  const LinearProgressIndicator(),
                ],
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(
                      const SignUpRoute(),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: greyColor,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Sign up',
                        style: TextStyle(
                          color: darkColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
