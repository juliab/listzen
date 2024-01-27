import 'package:flutter/material.dart';

class SocialSignInButton extends StatelessWidget {
  final Function() onPressed;
  final Logo logo;
  final Text text;
  final ButtonStyle? style;

  const SocialSignInButton({
    super.key,
    required this.onPressed,
    required this.logo,
    required this.text,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: style,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          logo,
          const SizedBox(width: 10),
          text,
        ],
      ),
    );
  }
}

class Logo extends StatelessWidget {
  final String name;
  final Color? color;

  const Logo({
    super.key,
    required this.name,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      name,
      width: 18,
      color: color,
    );
  }
}
