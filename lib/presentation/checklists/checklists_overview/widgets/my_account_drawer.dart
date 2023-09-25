import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listzen/application/auth/auth_bloc.dart';
import 'package:listzen/presentation/checklists/checklists_overview/widgets/drawer_tile_widget.dart';
import 'package:listzen/presentation/checklists/checklists_overview/widgets/my_account_drawer_header.dart';
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DrawerTileWidget(
                  icon: Icons.logout,
                  title: 'Sign Out',
                  onTap: () => BlocProvider.of<AuthBloc>(context)
                      .add(const AuthEvent.signedOut()),
                ),
                const SizedBox(height: 40),
                Text(
                  'Dangerous area',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: darkColor),
                ),
                DrawerTileWidget(
                  icon: Icons.person_remove,
                  title: 'Delete My Account',
                  dangerousArea: true,
                  onTap: () =>
                      AutoRouter.of(context).push(const DeleteAccountRoute()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
