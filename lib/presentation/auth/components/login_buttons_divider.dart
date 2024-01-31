import 'package:flutter/material.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/standard_padding.dart';

class LoginButtonsDivider extends StatelessWidget {
  const LoginButtonsDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return StandardPadding.vertical(
      factor: 0.8,
      child: Row(
        children: [
          const Expanded(child: Divider()),
          StandardPadding.horizontal(
            factor: 0.5,
            child: Text(
              'or',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(color: greyColor),
            ),
          ),
          const Expanded(child: Divider()),
        ],
      ),
    );
  }
}
