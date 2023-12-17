import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:listzen/presentation/auth/theming/style.dart';
import 'package:listzen/presentation/auth/widgets/forgot_password_link.dart';

class PasswordField extends StatelessWidget {
  final bool showForgotPasswordLink;
  final bool showConfirmPasswordField;

  const PasswordField({
    super.key,
    this.showForgotPasswordLink = false,
    this.showConfirmPasswordField = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlocBuilder<SignInFormBloc, SignInFormState>(
              buildWhen: _rebuildLabel,
              builder: (context, state) {
                return PasswordFieldLabel(
                  name: 'Password',
                  isValid: state.password.value.isRight(),
                );
              },
            ),
            if (showForgotPasswordLink) ...[const ForgotPasswordLink()],
          ],
        ),
        const SizedBox(height: 6),
        TextFormField(
          autocorrect: false,
          obscureText: true,
          onChanged: (value) => context
              .read<SignInFormBloc>()
              .add(SignInFormEvent.passwordChanged(value)),
          validator: (_) =>
              context.read<SignInFormBloc>().state.password.value.fold(
                    (f) => f.maybeMap(
                      shortPassword: (_) => 'Short password',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        ),
        if (showConfirmPasswordField) ...[
          standardHeightSizedBox,
          BlocBuilder<SignInFormBloc, SignInFormState>(
            buildWhen: _rebuildLabel,
            builder: (context, state) {
              return PasswordFieldLabel(
                name: 'Confirm Password',
                isValid: state.confirmPassword.isValid(),
              );
            },
          ),
          const SizedBox(height: 6),
          TextFormField(
            autocorrect: false,
            obscureText: true,
            onChanged: (value) => context
                .read<SignInFormBloc>()
                .add(SignInFormEvent.confirmPasswordChanged(value)),
            validator: (_) =>
                context.read<SignInFormBloc>().state.confirmPassword.value.fold(
                      (f) => f.maybeMap(
                        passwordsDontMatch: (_) => "Passwords don't match",
                        shortPassword: (_) => 'Short password',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
          ),
        ]
      ],
    );
  }

  bool _rebuildLabel(SignInFormState previous, SignInFormState current) {
    return previous.password.value != current.password.value ||
        previous.confirmPassword.value != current.confirmPassword.value;
  }
}

class PasswordFieldLabel extends StatelessWidget {
  final String name;
  final bool isValid;

  const PasswordFieldLabel({
    super.key,
    required this.name,
    required this.isValid,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(width: 5),
        if (isValid) ...[
          const Icon(
            Icons.check,
            color: Colors.green,
          ),
        ],
      ],
    );
  }
}
