import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:listzen/presentation/auth/components/auth_text_field.dart';
import 'package:listzen/presentation/auth/components/forgot_password_link.dart';
import 'package:listzen/presentation/core/widgets/spacing.dart';

const insecurePasswordError = "Password must be at least 6 characters long, "
    "including one letter, one digit, and one special character";

const passwordsDontMatchError = "Passwords don't match";

class PasswordField extends StatelessWidget {
  final bool showForgotPasswordLink;
  final bool showConfirmPasswordField;
  final bool showValidCheckbox;
  final bool showValidationError;

  const PasswordField({
    super.key,
    this.showForgotPasswordLink = false,
    this.showConfirmPasswordField = false,
    this.showValidCheckbox = false,
    this.showValidationError = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildPasswordField(context),
        if (showConfirmPasswordField) ...[
          const Spacing.vertical(factor: 1.3),
          _buildConfirmPasswordField(context),
        ],
      ],
    );
  }

  Widget _buildPasswordField(BuildContext context) {
    return AuthTextField(
      labelName: "Password",
      validCheckbox: _buildPasswordValidCheckbox(context),
      link: showForgotPasswordLink ? const ForgotPasswordLink() : null,
      obscureText: true,
      onChanged: (value) => context
          .read<SignInFormBloc>()
          .add(SignInFormEvent.passwordChanged(value)),
      validator: _passwordValidator(context),
    );
  }

  Widget? _buildPasswordValidCheckbox(BuildContext context) {
    if (!showValidCheckbox) {
      return null;
    }
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      buildWhen: _rebuildValidCheckbox,
      builder: (context, state) =>
          state.password.value.isRight() ? const ValidCheckbox() : Container(),
    );
  }

  String? Function()? _passwordValidator(BuildContext context) {
    return () => context.read<SignInFormBloc>().state.password.value.fold(
          (f) => f.maybeMap(
            insecurePassword: (_) =>
                showValidationError ? insecurePasswordError : null,
            orElse: () => null,
          ),
          (_) => null,
        );
  }

  Widget _buildConfirmPasswordField(BuildContext context) {
    return AuthTextField(
      labelName: "Confirm Password",
      validCheckbox: _confirmPasswordValidCheckbox(context),
      link: showForgotPasswordLink ? const ForgotPasswordLink() : null,
      obscureText: true,
      onChanged: (value) => context
          .read<SignInFormBloc>()
          .add(SignInFormEvent.confirmPasswordChanged(value)),
      validator: _confirmPasswordValidator(context),
    );
  }

  Widget? _confirmPasswordValidCheckbox(BuildContext context) {
    if (!showValidCheckbox) {
      return null;
    }
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      buildWhen: _rebuildValidCheckbox,
      builder: (context, state) => state.confirmPassword.value.isRight()
          ? const ValidCheckbox()
          : Container(),
    );
  }

  bool _rebuildValidCheckbox(
      SignInFormState previous, SignInFormState current) {
    return previous.password.value != current.password.value ||
        previous.confirmPassword.value != current.confirmPassword.value;
  }

  String? Function()? _confirmPasswordValidator(BuildContext context) {
    return () =>
        context.read<SignInFormBloc>().state.confirmPassword.value.fold(
              (f) => f.maybeMap(
                insecurePassword: (_) =>
                    showValidationError ? insecurePasswordError : null,
                passwordsDontMatch: (_) =>
                    showValidationError ? passwordsDontMatchError : null,
                orElse: () => null,
              ),
              (_) => null,
            );
  }
}
