import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:listzen/presentation/auth/components/accent_button.dart';
import 'package:listzen/presentation/auth/components/auth_form_container.dart';
import 'package:listzen/presentation/auth/components/back_to_route_link.dart';
import 'package:listzen/presentation/auth/components/email_field.dart';
import 'package:listzen/presentation/auth/components/login_buttons_divider.dart';
import 'package:listzen/presentation/auth/components/password_field.dart';
import 'package:listzen/presentation/auth/components/redirect_link.dart';
import 'package:listzen/presentation/auth/sign_in/social_sign_in_buttons_section.dart';
import 'package:listzen/presentation/core/widgets/spacing.dart';
import 'package:listzen/presentation/routes/app_router.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return AuthFormContainer(
          form: Form(
            autovalidateMode: state.autovalidateMode,
            child: Column(
              children: [
                _buildBackToChecklistLink(),
                const Spacing.vertical(),
                const EmailField(
                  showValidationError: false,
                ),
                const Spacing.vertical(),
                const PasswordField(
                  showForgotPasswordLink: true,
                  showValidationError: false,
                ),
                const Spacing.vertical(factor: 1.5),
                _buildLoginButton(context),
                const LoginButtonsDivider(),
                const SocialSignInButtonsSection(),
                if (state.isSubmitting) ...[
                  const Spacing.vertical(),
                  const LinearProgressIndicator(),
                ],
                const Spacing.vertical(),
                _buildSignUpLink(context),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildBackToChecklistLink() {
    return const BackToRouteLink(
      text: 'Back to checklists',
      routeName: ChecklistsOverviewRoute.name,
      alignment: MainAxisAlignment.start,
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return AccentButton(
      text: 'Login',
      onPressed: () => context.read<SignInFormBloc>().add(
            const SignInFormEvent.signInWithEmailAndPasswordPressed(),
          ),
    );
  }

  Widget _buildSignUpLink(BuildContext context) {
    return RedirectLink(
      leadingText: "Don't have an account?",
      linkText: 'Sign up',
      onTap: () => AutoRouter.of(context).push(const SignUpRoute()),
    );
  }
}
