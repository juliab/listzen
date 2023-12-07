import 'package:flutter/material.dart';
import 'package:listzen/presentation/core/theming/style.dart';

class RedirectLink extends StatelessWidget {
  final String leadingText;
  final String linkText;
  final Function()? onTap;

  const RedirectLink({
    super.key,
    required this.leadingText,
    required this.linkText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            leadingText,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: greyColor),
          ),
          const SizedBox(width: 8),
          Text(
            linkText,
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: darkColor),
          ),
        ],
      ),
    );
  }
}
