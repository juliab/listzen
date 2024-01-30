import 'package:flutter/material.dart';
import 'package:listzen/presentation/auth/theming/style.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/spacing.dart';
import 'package:listzen/presentation/core/widgets/standard_padding.dart';

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
      child: StandardPadding.vertical(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildLeadingText(context),
            const Spacing.horizontal(factor: 0.7),
            _buildLinkText(context),
          ],
        ),
      ),
    );
  }

  Widget _buildLeadingText(BuildContext context) {
    return Text(
      leadingText,
      style: authLinkTextStyle(context)?.copyWith(color: greyColor),
    );
  }

  Widget _buildLinkText(BuildContext context) {
    return Text(
      linkText,
      style: authLinkTextStyle(context)?.copyWith(color: darkColor),
    );
  }
}
