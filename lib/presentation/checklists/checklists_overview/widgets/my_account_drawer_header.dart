import 'package:flutter/material.dart';
import 'package:listzen/presentation/core/auth_helpers.dart';
import 'package:listzen/presentation/core/theming/style.dart';

class MyAccountDrawerHeader extends StatelessWidget {
  final String title;
  final double height;
  final Color backgroundColor;
  final Color foregroundColor;
  final double anonymousIconSize;

  const MyAccountDrawerHeader({
    super.key,
    this.title = 'My Account',
    this.height = 200.0,
    this.backgroundColor = appBarColor,
    this.foregroundColor = darkColor,
    this.anonymousIconSize = 70.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: DrawerHeader(
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
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(color: foregroundColor),
        ),
        const SizedBox(height: 20.0),
        Text(
          getUserEmail(context),
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(color: foregroundColor),
        ),
      ],
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
