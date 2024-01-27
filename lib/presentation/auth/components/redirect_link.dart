import 'package:flutter/material.dart';
import 'package:listzen/presentation/core/theming/style.dart';

class RedirectLink extends StatelessWidget {
  final String leadingText;
  final String linkText;
  final Function()? onTap;
  final EdgeInsetsGeometry padding;

  const RedirectLink({
    super.key,
    required this.leadingText,
    required this.linkText,
    required this.onTap,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              leadingText,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(color: greyColor),
            ),
            const SizedBox(width: 8),
            Text(
              linkText,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.copyWith(color: darkColor),
            ),
          ],
        ),
      ),
    );
  }
}
