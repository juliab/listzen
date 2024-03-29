import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/auth_bloc.dart';
import 'package:listzen/presentation/auth/auth_helpers.dart';
import 'package:listzen/presentation/checklists/checklists_overview/widgets/drawer_tile_widget.dart';
import 'package:listzen/presentation/checklists/checklists_overview/widgets/my_account_drawer_header.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/spacing.dart';
import 'package:listzen/presentation/core/widgets/standard_padding.dart';
import 'package:listzen/presentation/routes/app_router.dart';

class MyAccountDrawer extends StatelessWidget {
  const MyAccountDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const MyAccountDrawerHeader(),
          StandardPadding.horizontal(
            factor: 0.8,
            child: userAuthenticated(context)
                ? const AuthenticatedArea()
                : const UnauthenticatedArea(),
          ),
        ],
      ),
    );
  }
}

class AuthenticatedArea extends StatelessWidget {
  const AuthenticatedArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSignOutButton(context),
        const Spacing.vertical(factor: 3),
        const DrawerText(text: 'Dangerous area'),
        _buildDeleteAccountButton(context),
      ],
    );
  }

  Widget _buildSignOutButton(BuildContext context) {
    return DrawerTileWidget(
      icon: Icons.logout,
      title: 'Sign Out',
      onTap: () {
        context.read<AuthBloc>().add(const AuthEvent.signedOut());
        AutoRouter.of(context).push(const ChecklistsOverviewRoute());
      },
    );
  }

  Widget _buildDeleteAccountButton(BuildContext context) {
    return DrawerTileWidget(
      icon: Icons.person_remove,
      title: 'Delete My Account',
      dangerousArea: true,
      onTap: () => AutoRouter.of(context)
        ..pop()
        ..push(const DeleteAccountRoute()),
    );
  }
}

class UnauthenticatedArea extends StatelessWidget {
  const UnauthenticatedArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const StandardPadding.vertical(
          factor: 1.5,
          child: DrawerText(
            text: 'Sign in to the app to enjoy multi-device functionality.',
          ),
        ),
        _buildSignInButton(context),
      ],
    );
  }

  Widget _buildSignInButton(BuildContext context) {
    return DrawerTileWidget(
      icon: Icons.login,
      title: 'Sign In',
      onTap: () => AutoRouter.of(context)
        ..pop()
        ..push(const SignInRoute()),
    );
  }
}

class DrawerText extends StatelessWidget {
  final String text;

  const DrawerText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return StandardPadding.horizontal(
      factor: 0.7,
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: darkColor,
              letterSpacing: -0.5,
            ),
      ),
    );
  }
}
