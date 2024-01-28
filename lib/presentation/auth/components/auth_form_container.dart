import 'package:flutter/material.dart';
import 'package:listzen/presentation/auth/theming/style.dart';
import 'package:listzen/presentation/core/widgets/standard_padding.dart';

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
      padding: StandardPadding.edgeInsetsOnly(
        context: context,
        topFactor: 1,
        leftFactor: 1.2,
        rightFactor: 1.2,
      ).copyWith(bottom: MediaQuery.of(context).padding.bottom),
      child: form,
    );
  }
}
