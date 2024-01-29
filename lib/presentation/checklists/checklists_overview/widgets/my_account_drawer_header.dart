import 'package:flutter/material.dart';
import 'package:listzen/presentation/auth/auth_helpers.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/spacing.dart';

class MyAccountDrawerHeader extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color foregroundColor;
  final double anonymousIconSize;

  const MyAccountDrawerHeader({
    super.key,
    this.title = 'My Account',
    this.backgroundColor = appBarColor,
    this.foregroundColor = darkColor,
    this.anonymousIconSize = 60.0,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
        color: appBarColor,
      ),
      child: userAuthenticated(context)
          ? MyAccountHeader(
              title: title,
              foregroundColor: foregroundColor,
            )
          : UnAuthenticatedHeader(
              foregroundColor: foregroundColor,
              size: anonymousIconSize,
            ),
    );
  }
}

class MyAccountHeader extends StatelessWidget {
  const MyAccountHeader({
    super.key,
    required this.title,
    required this.foregroundColor,
  });

  final String title;
  final Color foregroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeaderTitle(context),
        const Spacing.vertical(),
        _buildUserEmail(context),
      ],
    );
  }

  Widget _buildHeaderTitle(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headlineSmall
          ?.copyWith(color: foregroundColor),
    );
  }

  Widget _buildUserEmail(BuildContext context) {
    return Text(
      getUserEmail(context),
      style: Theme.of(context)
          .textTheme
          .titleSmall
          ?.copyWith(color: foregroundColor),
    );
  }
}

class UnAuthenticatedHeader extends StatelessWidget {
  const UnAuthenticatedHeader({
    super.key,
    required this.foregroundColor,
    required this.size,
  });

  final Color foregroundColor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'icons/anonymous.png',
        width: size,
        height: size,
        color: foregroundColor,
      ),
    );
  }
}
