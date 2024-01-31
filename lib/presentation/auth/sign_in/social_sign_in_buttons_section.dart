import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:listzen/presentation/auth/sign_in/social_sign_in_button.dart';
import 'package:listzen/presentation/auth/theming/style.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/spacing.dart';

class SocialSignInButtonsSection extends StatelessWidget {
  final bool relogin;

  const SocialSignInButtonsSection({
    super.key,
    this.relogin = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (Platform.isIOS) ...[
          SignInWithAppleButton(relogin: relogin),
          const Spacing.vertical(factor: 1.3),
        ],
        SignInWithGoogleButton(relogin: relogin),
      ],
    );
  }
}

class SignInWithGoogleButton extends StatelessWidget {
  final bool relogin;

  const SignInWithGoogleButton({
    super.key,
    required this.relogin,
  });

  @override
  Widget build(BuildContext context) {
    return SocialSignInButton(
      onPressed: _signIn(context),
      logo: _buildLogo(),
      text: Text(
        'Sign in with Google',
        style: authButtonTextStyle(context)?.copyWith(color: blackColor),
      ),
      style: googleButtonStyle(context),
    );
  }

  dynamic Function() _signIn(BuildContext context) {
    return () {
      FocusManager.instance.primaryFocus?.unfocus();
      context.read<SignInFormBloc>().add(
            relogin
                ? const SignInFormEvent.reloginWithGooglePressed()
                : const SignInFormEvent.signInWithGooglePressed(),
          );
    };
  }

  Logo _buildLogo() {
    return const Logo(name: 'icons/google.png');
  }
}

class SignInWithAppleButton extends StatelessWidget {
  final bool relogin;

  const SignInWithAppleButton({
    super.key,
    required this.relogin,
  });

  @override
  Widget build(BuildContext context) {
    return SocialSignInButton(
      onPressed: _signIn(context),
      logo: _buildLogo(),
      text: Text(
        'Sign in with Apple',
        style: authButtonTextStyle(context)?.copyWith(
          color: buttonForegroundColor,
        ),
      ),
      style: appleButtonStyle(context),
    );
  }

  dynamic Function() _signIn(BuildContext context) {
    return () {
      FocusManager.instance.primaryFocus?.unfocus();
      context.read<SignInFormBloc>().add(
            relogin
                ? const SignInFormEvent.reloginWithApplePressed()
                : const SignInFormEvent.signInWithApplePressed(),
          );
    };
  }

  Logo _buildLogo() {
    return Logo(
      name: 'icons/apple.png',
      color: buttonForegroundColor,
    );
  }
}
