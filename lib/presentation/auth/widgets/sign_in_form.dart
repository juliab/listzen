import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/auth_bloc.dart';
import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:listzen/presentation/auth/theming/style.dart';
import 'package:listzen/presentation/auth/widgets/accent_button.dart';
import 'package:listzen/presentation/auth/widgets/back_to_route_link.dart';
import 'package:listzen/presentation/auth/widgets/email_field.dart';
import 'package:listzen/presentation/auth/widgets/password_field.dart';
import 'package:listzen/presentation/auth/widgets/social_sign_in_buttons_section.dart';
import 'package:listzen/presentation/core/error_flushbar.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/routes/app_router.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: _listenToAuthFailure,
      builder: (context, state) {
        return Container(
          height: 630,
          decoration: formDecoration,
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 60, top: 25),
          child: Form(
            autovalidateMode: state.autovalidateMode,
            child: Column(
              children: [
                const BackToRouteLink(
                  text: 'Back to checklists',
                  routeName: ChecklistsOverviewRoute.name,
                  alignment: MainAxisAlignment.start,
                ),
                standardHeightSizedBox,
                const EmailField(),
                standardHeightSizedBox,
                const PasswordField(
                  showForgotPasswordLink: true,
                ),
                standardHeightSizedBox,
                AccentButton(
                  text: 'Login',
                  onPressed: () => context.read<SignInFormBloc>().add(
                      const SignInFormEvent
                          .signInWithEmailAndPasswordPressed()),
                ),
                standardHeightSizedBox,
                Row(
                  children: [
                    const Expanded(child: Divider()),
                    const SizedBox(width: 10),
                    Text(
                      'or',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge
                          ?.copyWith(color: borderColor),
                    ),
                    const SizedBox(width: 10),
                    const Expanded(child: Divider()),
                  ],
                ),
                standardHeightSizedBox,
                const SocialSignInButtonsSection(),
                if (state.isSubmitting) ...[
                  const SizedBox(
                    height: 20,
                  ),
                  const LinearProgressIndicator(),
                ],
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () => AutoRouter.of(context).push(const SignUpRoute()),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(color: greyColor),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Sign up',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(color: darkColor),
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

  void _listenToAuthFailure(BuildContext context, SignInFormState state) {
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
        ErrorFlushbar(
          title: 'Error',
          message: errorMessage,
          context: context,
        ).show();
      }, (_) {
        AutoRouter.of(context).push(const ChecklistsOverviewRoute());
        BlocProvider.of<AuthBloc>(context)
            .add(const AuthEvent.authCheckRequested());
      }),
    );
  }
}
