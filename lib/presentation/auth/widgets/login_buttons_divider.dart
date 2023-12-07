import 'package:flutter/material.dart';
import 'package:listzen/presentation/auth/theming/style.dart';
import 'package:listzen/presentation/core/theming/style.dart';

class LoginButtonsDivider extends StatelessWidget {
  const LoginButtonsDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        standardHeightSizedBox,
        Row(
          children: [
            const Expanded(child: Divider()),
            const SizedBox(width: 10),
            Text(
              'or',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: borderColor),
            ),
            const SizedBox(width: 10),
            const Expanded(child: Divider()),
          ],
        ),
        standardHeightSizedBox,
      ],
    );
  }
}
