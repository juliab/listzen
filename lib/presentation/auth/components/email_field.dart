import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:listzen/presentation/auth/components/auth_text_field.dart';

class EmailField extends StatelessWidget {
  final bool showValidCheckbox;
  final bool showValidationError;

  const EmailField({
    super.key,
    this.showValidCheckbox = false,
    this.showValidationError = true,
  });

  @override
  Widget build(BuildContext context) {
    return AuthTextField(
      labelName: "Email",
      validCheckbox: _getValidCheckbox(context),
      onChanged: (value) => context.read<SignInFormBloc>().add(
            SignInFormEvent.emailChanged(value),
          ),
      validator: () => context
          .read<SignInFormBloc>()
          .state
          .emailAddress
          .value
          .fold(
            (f) => f.maybeMap(
              invalidEmail: (_) => showValidationError ? 'Invalid email' : null,
              orElse: () => null,
            ),
            (_) => null,
          ),
    );
  }

  Widget? _getValidCheckbox(BuildContext context) {
    if (!showValidCheckbox) {
      return null;
    }
    return BlocBuilder<SignInFormBloc, SignInFormState>(
      buildWhen: (previous, current) =>
          previous.emailAddress.value != current.emailAddress.value,
      builder: (context, state) => state.emailAddress.value.isRight()
          ? const ValidCheckbox()
          : Container(),
    );
  }
}
