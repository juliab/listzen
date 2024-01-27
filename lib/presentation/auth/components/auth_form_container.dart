import 'package:flutter/material.dart';
import 'package:listzen/presentation/auth/theming/style.dart';

const double sidePadding = 20.0;

class AuthFormContainer extends StatelessWidget {
  final Widget form;
  final double topPadding;
  final double bottomPadding;

  const AuthFormContainer({
    super.key,
    required this.form,
    this.topPadding = 25.0,
    this.bottomPadding = 30.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: formDecoration,
      padding: EdgeInsets.only(
        left: sidePadding,
        right: sidePadding,
        top: topPadding,
        bottom: bottomPadding,
      ),
      child: form,
    );
  }
}
