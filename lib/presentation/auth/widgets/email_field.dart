import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:success_check/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';

class EmailField extends StatelessWidget {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlocBuilder<SignInFormBloc, SignInFormState>(
          buildWhen: (previous, current) =>
              previous.emailAddress.value != current.emailAddress.value,
          builder: (context, state) {
            return Row(
              children: [
                const Text('Email'),
                const SizedBox(width: 5),
                if (state.emailAddress.value.isRight()) ...[
                  const Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                ],
              ],
            );
          },
        ),
        const SizedBox(height: 6),
        TextFormField(
          autocorrect: false,
          onChanged: (value) => context
              .read<SignInFormBloc>()
              .add(SignInFormEvent.emailChanged(value)),
          validator: (_) =>
              context.read<SignInFormBloc>().state.emailAddress.value.fold(
                    (f) => f.maybeMap(
                      invalidEmail: (_) => 'Invalid Email',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        ),
      ],
    );
  }
}
