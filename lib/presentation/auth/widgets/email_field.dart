import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';

class EmailField extends StatelessWidget {
  final bool showValidCheckbox;

  const EmailField({
    super.key,
    this.showValidCheckbox = false,
  });

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
                Text(
                  'Email',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(width: 5),
                if (showValidCheckbox &&
                    state.emailAddress.value.isRight()) ...[
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
                      empty: (_) => 'Field is required',
                      invalidEmail: (_) => 'Invalid email',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        ),
      ],
    );
  }
}
