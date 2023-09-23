import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/auth_bloc.dart';
import 'package:listzen/presentation/core/theming/style.dart';

class MyAccountDrawerHeader extends StatelessWidget {
  final String title;
  final double height;
  final Color backgroundColor;
  final Color foregroundColor;

  const MyAccountDrawerHeader({
    super.key,
    this.title = 'My Account',
    this.height = 200.0,
    this.backgroundColor = appBarColor,
    this.foregroundColor = darkColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: DrawerHeader(
        decoration: const BoxDecoration(
          color: appBarColor,
        ),
        child: Column(
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
              _getUserEmail(context),
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: foregroundColor),
            ),
          ],
        ),
      ),
    );
  }

  String _getUserEmail(BuildContext context) {
    return context.read<AuthBloc>().state.maybeMap(
          authenticated: (state) => state.user.email,
          orElse: () => '',
        );
  }
}
