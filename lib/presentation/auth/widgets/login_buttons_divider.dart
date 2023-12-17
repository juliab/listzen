import 'package:flutter/material.dart';
import 'package:listzen/presentation/core/theming/style.dart';

class LoginButtonsDivider extends StatelessWidget {
  const LoginButtonsDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          const Expanded(child: Divider()),
          const SizedBox(width: 10),
          Text(
            'or',
            style: Theme.of(context)
                .textTheme
                .labelMedium
                ?.copyWith(color: borderColor),
          ),
          const SizedBox(width: 10),
          const Expanded(child: Divider()),
        ],
      ),
    );
  }
}
