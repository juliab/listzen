import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/presentation/auth/delete_account/delete_account_page.dart';
import 'package:listzen/presentation/auth/reset_password/password_reset_confirmation_page.dart';
import 'package:listzen/presentation/auth/reset_password/reset_password_page.dart';
import 'package:listzen/presentation/auth/sign_in/sign_in_page.dart';
import 'package:listzen/presentation/auth/sign_up/sign_up_page.dart';
import 'package:listzen/presentation/checklists/checklists_overview/checklists_overview_page.dart';
import 'package:listzen/presentation/checklists/edit_checklist/edit_checklist_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SignInRoute.page),
    AutoRoute(page: ChecklistsOverviewRoute.page, path: '/'),
    AutoRoute(page: EditChecklistRoute.page),
    AutoRoute(page: SignUpRoute.page),
    AutoRoute(page: ResetPasswordRoute.page),
    AutoRoute(page: PasswordResetConfirmationRoute.page),
    AutoRoute(page: DeleteAccountRoute.page),
  ];
}
