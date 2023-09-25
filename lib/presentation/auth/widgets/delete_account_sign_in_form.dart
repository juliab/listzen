import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:listzen/presentation/auth/theming/style.dart';
import 'package:listzen/presentation/auth/widgets/accent_button.dart';
import 'package:listzen/presentation/auth/widgets/password_field.dart';
import 'package:listzen/presentation/auth/widgets/social_sign_in_buttons_section.dart';
import 'package:listzen/presentation/core/theming/style.dart';

class DeleteAccountSignInForm extends StatelessWidget {
  const DeleteAccountSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return Container(
          height: 710,
          decoration: formDecoration,
          padding:
              const EdgeInsets.only(left: 20, right: 20, bottom: 60, top: 30),
          child: Form(
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
                  'to the app using your preferred sign-in method.',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 35),
                const PasswordField(
                  showForgotPasswordLink: false,
                ),
                const SizedBox(height: 25),
                AccentButton(
                  text: 'Login',
                  onPressed: () => context
                      .read<SignInFormBloc>()
                      .add(const SignInFormEvent.reloginWithPasswordPressed()),
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
                const SocialSignInButtonsSection(
                  relogin: true,
                ),
                if (state.isSubmitting) ...[
                  const SizedBox(
                    height: 20,
                  ),
                  const LinearProgressIndicator(),
                ],
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () => AutoRouter.of(context).pop(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.arrow_back,
                        color: greyColor,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Cancel and return to the app',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge
                            ?.copyWith(color: greyColor),
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
