import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:success_check/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:success_check/presentation/core/theming/style.dart';

class SignInWithGoogleButton extends StatelessWidget {
  const SignInWithGoogleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => context.read<SignInFormBloc>().add(
            const SignInFormEvent.signInWithGooglePressed(),
          ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const GoogleIcon(),
          const SizedBox(width: 10),
          Text(
            'Sign in with Google',
            style: buttonTextStyle.copyWith(color: blackColor),
          ),
        ],
      ),
    );
  }
}

class GoogleIcon extends StatelessWidget {
  const GoogleIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'icons/google.png',
      width: 17,
    );
  }
}
