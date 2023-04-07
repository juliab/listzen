import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:success_check/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';

import 'package:success_check/presentation/core/theming/themes.dart';

class AccentButton extends StatelessWidget {
  final String text;
  final SignInFormEvent event;

  const AccentButton({
    super.key,
    required this.text,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius,
      ),
      child: OutlinedButton(
        onPressed: () {
          context.read<SignInFormBloc>().add(event);
        },
        child: Text(
          text,
          style: buttonTextStyle.copyWith(color: backgroundColor),
        ),
      ),
    );
  }
}
