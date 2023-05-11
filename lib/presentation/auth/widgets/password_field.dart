import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:success_check/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:success_check/presentation/auth/widgets/forgot_password_link.dart';

class PasswordField extends StatelessWidget {
  final bool showForgotPasswordLink;

  const PasswordField({
    super.key,
    required this.showForgotPasswordLink,
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
              buildWhen: (previous, current) =>
                  previous.password.value != current.password.value,
              builder: (context, state) {
                return Row(
                  children: [
                    Text(
                      'Password',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    const SizedBox(width: 5),
                    if (state.password.value.isRight()) ...[
                      const Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    ],
                  ],
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
                      shortPassword: (_) => 'Short Password',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        ),
      ],
    );
  }
}
