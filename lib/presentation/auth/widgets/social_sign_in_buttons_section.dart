import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:listzen/presentation/auth/theming/style.dart';
import 'package:listzen/presentation/auth/widgets/social_sign_in_button.dart';
import 'package:listzen/presentation/core/theming/style.dart';

class SocialSignInButtonsSection extends StatelessWidget {
  final bool relogin;

  const SocialSignInButtonsSection({
    super.key,
    this.relogin = false,
  });

  @override
  Widget build(BuildContext context) {
    final signInWithGoogleButton = SocialSignInButton(
      onPressed: () => context.read<SignInFormBloc>().add(relogin
          ? const SignInFormEvent.reloginWithGooglePressed()
          : const SignInFormEvent.signInWithGooglePressed()),
      logo: const Logo(name: 'icons/google.png'),
      text: Text(
        'Sign in with Google',
        style: buttonTextStyle.copyWith(color: blackColor),
      ),
    );

    final signInWithAppleButton = SocialSignInButton(
      onPressed: () => context.read<SignInFormBloc>().add(
            relogin
                ? const SignInFormEvent.reloginWithApplePressed()
                : const SignInFormEvent.signInWithApplePressed(),
          ),
      logo: const Logo(
        name: 'icons/apple.png',
        color: whiteColor,
      ),
      text: Text(
        'Sign in with Apple',
        style: buttonTextStyle.copyWith(color: whiteColor),
      ),
      style: appleButtonStyle,
    );

    return Column(
      children: [
        signInWithGoogleButton,
        standardHeightSizedBox,
        signInWithAppleButton,
      ],
    );
  }
}
