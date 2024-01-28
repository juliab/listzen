import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/auth_bloc.dart';
import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:listzen/domain/auth/user.dart';
import 'package:listzen/presentation/auth/components/accent_button.dart';
import 'package:listzen/presentation/auth/components/auth_form_container.dart';
import 'package:listzen/presentation/auth/components/back_to_route_link.dart';
import 'package:listzen/presentation/auth/components/password_field.dart';
import 'package:listzen/presentation/auth/sign_in/social_sign_in_buttons_section.dart';
import 'package:listzen/presentation/auth/theming/style.dart';

class DeleteAccountSignInForm extends StatelessWidget {
  const DeleteAccountSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return AuthFormContainer(
          form: Form(
            autovalidateMode: state.autovalidateMode,
            child: Column(
              children: [
                Text(
                  'Delete Account',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Deleting your account will remove all your checklists from '
                  'our database. This action cannot be reversed.\n\nTo '
                  'initiate the account deletion process, please re-login '
                  'to the app.',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 35),
                const SignInButton(),
                if (state.isSubmitting) ...[
                  const SizedBox(
                    height: 20,
                  ),
                  const LinearProgressIndicator(),
                ],
                standardHeightSizedBox,
                const BackToRouteLink(
                  text: 'Cancel and return to the app',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return state.maybeMap(
          authenticated: (value) {
            switch (value.user.provider) {
              case AuthProvider.apple:
                return const SignInWithAppleButton(relogin: true);
              case AuthProvider.google:
                return const SignInWithGoogleButton(relogin: true);
              case AuthProvider.email:
                return Column(
                  children: [
                    const PasswordField(
                      showValidationError: false,
                    ),
                    const SizedBox(height: 25),
                    AccentButton(
                      text: 'Login',
                      onPressed: () => context.read<SignInFormBloc>().add(
                          const SignInFormEvent.reloginWithPasswordPressed()),
                    ),
                  ],
                );
            }
          },
          orElse: () => Container(),
        );
      },
    );
  }
}
