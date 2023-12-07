import 'package:flutter/material.dart';
import 'package:listzen/presentation/auth/theming/style.dart';

class AuthPageContainer extends StatelessWidget {
  final Widget form;
  final double height;

  const AuthPageContainer({
    super.key,
    required this.form,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: formDecoration,
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 30),
      child: form,
    );
  }
}
