import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:listzen/presentation/auth/components/accent_button.dart';
import 'package:listzen/presentation/auth/components/auth_form_container.dart';
import 'package:listzen/presentation/auth/components/back_to_route_link.dart';
import 'package:listzen/presentation/auth/components/email_field.dart';
import 'package:listzen/presentation/core/widgets/spacing.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return AuthFormContainer(
          form: Form(
            autovalidateMode: state.autovalidateMode,
            child: Column(
              children: [
                _buildBackToSignInLink(),
                const Spacing.vertical(factor: 1.5),
                const EmailField(
                  showValidationError: false,
                ),
                const Spacing.vertical(factor: 2),
                _buildResetPasswordButton(context),
                if (state.isSubmitting) ...[
                  const Spacing.vertical(factor: 1.5),
                  const LinearProgressIndicator(),
                ],
                const Spacing.vertical(factor: 2),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildBackToSignInLink() {
    return const BackToRouteLink(
      text: 'Back to login',
      alignment: MainAxisAlignment.start,
    );
  }

  Widget _buildResetPasswordButton(BuildContext context) {
    return AccentButton(
      text: 'Reset Password',
      onPressed: () => context.read<SignInFormBloc>().add(
            const SignInFormEvent.resetPasswordPressed(),
          ),
    );
  }
}
