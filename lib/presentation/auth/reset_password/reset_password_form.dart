import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:listzen/presentation/auth/components/accent_button.dart';
import 'package:listzen/presentation/auth/components/auth_form_container.dart';
import 'package:listzen/presentation/auth/components/back_to_route_link.dart';
import 'package:listzen/presentation/auth/components/email_field.dart';

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
                const BackToRouteLink(
                  text: 'Back to login',
                  alignment: MainAxisAlignment.start,
                ),
                const EmailField(
                  showValidationError: false,
                ),
                const SizedBox(height: 25),
                AccentButton(
                  text: 'Reset Password',
                  onPressed: () => context
                      .read<SignInFormBloc>()
                      .add(const SignInFormEvent.resetPasswordPressed()),
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
}
