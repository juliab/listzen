import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:listzen/presentation/auth/theming/style.dart';
import 'package:listzen/presentation/auth/widgets/accent_button.dart';
import 'package:listzen/presentation/auth/widgets/auth_page_container.dart';
import 'package:listzen/presentation/auth/widgets/back_to_route_link.dart';
import 'package:listzen/presentation/auth/widgets/email_field.dart';
import 'package:listzen/presentation/auth/widgets/login_buttons_divider.dart';
import 'package:listzen/presentation/auth/widgets/password_field.dart';
import 'package:listzen/presentation/auth/widgets/redirect_link.dart';
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
        return AuthPageContainer(
          height: signInFormHeight,
          form: Form(
            autovalidateMode: state.autovalidateMode,
            child: Column(
              children: [
                const BackToRouteLink(
                  text: 'Back to checklists',
                  routeName: ChecklistsOverviewRoute.name,
                  alignment: MainAxisAlignment.start,
                ),
                const SizedBox(height: 30.0),
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
                KeyboardVisibilityBuilder(
                  builder: (_, isKeyboardVisible) => isKeyboardVisible
                      ? Container()
                      : const Column(
                          children: [
                            LoginButtonsDivider(),
                            SocialSignInButtonsSection(),
                          ],
                        ),
                ),
                if (state.isSubmitting) ...[
                  standardHeightSizedBox,
                  const LinearProgressIndicator(),
                ],
                const SizedBox(height: 30),
                RedirectLink(
                  leadingText: "Don't have an account?",
                  linkText: 'Sign up',
                  onTap: () => AutoRouter.of(context).push(const SignUpRoute()),
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
      }),
    );
  }
}
