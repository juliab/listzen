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
import 'package:listzen/presentation/auth/theming/style.dart';
import 'package:listzen/presentation/routes/app_router.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return AuthFormContainer(
          topPadding: 15.0,
          bottomPadding: 15.0,
          form: Form(
            autovalidateMode: state.autovalidateMode,
            child: Column(
              children: [
                const BackToRouteLink(
                  text: 'Back to checklists',
                  routeName: ChecklistsOverviewRoute.name,
                  alignment: MainAxisAlignment.start,
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                ),
                const EmailField(
                  showValidationError: false,
                ),
                standardHeightSizedBox,
                const PasswordField(
                  showForgotPasswordLink: true,
                  showValidationError: false,
                ),
                standardHeightSizedBox,
                AccentButton(
                  text: 'Login',
                  onPressed: () => context.read<SignInFormBloc>().add(
                      const SignInFormEvent
                          .signInWithEmailAndPasswordPressed()),
                ),
                const LoginButtonsDivider(),
                const SocialSignInButtonsSection(),
                if (state.isSubmitting) ...[
                  standardHeightSizedBox,
                  const LinearProgressIndicator(),
                ],
                standardHeightSizedBox,
                RedirectLink(
                  leadingText: "Don't have an account?",
                  linkText: 'Sign up',
                  onTap: () => AutoRouter.of(context).push(const SignUpRoute()),
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
