import 'package:flutter/material.dart';
import 'package:listzen/presentation/auth/theming/style.dart';

class AuthFormContainer extends StatelessWidget {
  final Widget form;

  const AuthFormContainer({
    super.key,
    required this.form,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: formDecoration,
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 20),
      child: form,
    );
  }
}
