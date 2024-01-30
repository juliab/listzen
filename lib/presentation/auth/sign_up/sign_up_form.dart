import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:listzen/presentation/auth/components/accent_button.dart';
import 'package:listzen/presentation/auth/components/auth_form_container.dart';
import 'package:listzen/presentation/auth/components/back_to_route_link.dart';
import 'package:listzen/presentation/auth/components/email_field.dart';
import 'package:listzen/presentation/auth/components/password_field.dart';
import 'package:listzen/presentation/auth/components/redirect_link.dart';
import 'package:listzen/presentation/core/widgets/spacing.dart';
import 'package:listzen/presentation/routes/app_router.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return AuthFormContainer(
          form: Form(
            autovalidateMode: state.autovalidateMode,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildBackToChecklistLink(),
                const Spacing.vertical(),
                const EmailField(
                  showValidCheckbox: true,
                ),
                const Spacing.vertical(),
                const PasswordField(
                  showConfirmPasswordField: true,
                  showValidCheckbox: true,
                ),
                const Spacing.vertical(factor: 1.5),
                _buildCreateAccountButton(context),
                const Spacing.vertical(factor: 1.5),
                _buildSignInLink(context),
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

  Widget _buildCreateAccountButton(BuildContext context) {
    return AccentButton(
      text: 'Create account',
      onPressed: () => context.read<SignInFormBloc>().add(
            const SignInFormEvent.registerWithEmailAndPasswordPressed(),
          ),
    );
  }

  Widget _buildSignInLink(BuildContext context) {
    return RedirectLink(
      leadingText: "Already have an account?",
      linkText: 'Login',
      onTap: () => AutoRouter.of(context).pop(),
    );
  }
}
