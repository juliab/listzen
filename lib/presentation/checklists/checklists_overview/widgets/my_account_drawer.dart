import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/auth_bloc.dart';
import 'package:listzen/application/checklists/checklist_watcher/checklist_watcher_bloc.dart';
import 'package:listzen/presentation/checklists/checklists_overview/widgets/drawer_tile_widget.dart';
import 'package:listzen/presentation/checklists/checklists_overview/widgets/my_account_drawer_header.dart';
import 'package:listzen/presentation/core/auth_helpers.dart';
import 'package:listzen/presentation/core/theming/style.dart';
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
        DrawerTileWidget(
          icon: Icons.logout,
          title: 'Sign Out',
          onTap: () {
            BlocProvider.of<ChecklistWatcherBloc>(context).close();
            BlocProvider.of<AuthBloc>(context).add(const AuthEvent.signedOut());
            AutoRouter.of(context).push(const ChecklistsOverviewRoute());
          },
        ),
        const SizedBox(height: 40),
        const DrawerText(text: 'Dangerous area'),
        DrawerTileWidget(
          icon: Icons.person_remove,
          title: 'Delete My Account',
          dangerousArea: true,
          onTap: () => AutoRouter.of(context).push(const DeleteAccountRoute()),
        ),
      ],
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
        const SizedBox(height: 20),
        const DrawerText(
            text: 'Sign in to the app to enjoy multi-device functionality.'),
        const SizedBox(height: 20),
        DrawerTileWidget(
          icon: Icons.login,
          title: 'Sign In',
          onTap: () => AutoRouter.of(context).push(const SignInRoute()),
        ),
      ],
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Text(
        text,
        style:
            Theme.of(context).textTheme.titleMedium?.copyWith(color: darkColor),
      ),
    );
  }
}
