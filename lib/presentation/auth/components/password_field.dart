import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:listzen/presentation/auth/theming/style.dart';
import 'package:listzen/presentation/auth/components/auth_text_field.dart';
import 'package:listzen/presentation/auth/components/forgot_password_link.dart';

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
        _passwordWidget(context),
        if (showConfirmPasswordField) ...[
          standardHeightSizedBox,
          _confirmPasswordWidget(context),
        ],
      ],
    );
  }

  Widget _passwordWidget(BuildContext context) {
    return AuthTextField(
      labelName: "Password",
      validCheckbox: _passwordValidCheckbox(context),
      linkOnTheRight:
          showForgotPasswordLink ? const ForgotPasswordLink() : null,
      obscureText: true,
      onChanged: (value) => context
          .read<SignInFormBloc>()
          .add(SignInFormEvent.passwordChanged(value)),
      validator: _passwordValidator(context),
    );
  }

  Widget? _passwordValidCheckbox(BuildContext context) {
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

  Widget _confirmPasswordWidget(BuildContext context) {
    return AuthTextField(
      labelName: "Confirm Password",
      validCheckbox: _confirmPasswordValidCheckbox(context),
      linkOnTheRight:
          showForgotPasswordLink ? const ForgotPasswordLink() : null,
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

bool _rebuildValidCheckbox(SignInFormState previous, SignInFormState current) {
  return previous.password.value != current.password.value ||
      previous.confirmPassword.value != current.confirmPassword.value;
}
