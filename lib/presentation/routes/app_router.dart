import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:success_check/domain/checklists/checklist.dart';
import 'package:success_check/presentation/auth/password_reset_confirmation_page.dart';
import 'package:success_check/presentation/auth/reset_password_page.dart';
import 'package:success_check/presentation/auth/sign_in_page.dart';
import 'package:success_check/presentation/auth/sign_up_page.dart';
import 'package:success_check/presentation/checklists/checklist_form/checklist_form_page_old.dart';
import 'package:success_check/presentation/checklists/checklists_overview/checklists_overview_page.dart';
import 'package:success_check/presentation/splash/splash_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, path: '/'),
    AutoRoute(page: SignInRoute.page),
    AutoRoute(page: ChecklistsOverviewRoute.page),
    AutoRoute(page: ChecklistFormRoute.page),
    AutoRoute(page: SignUpRoute.page),
    AutoRoute(page: ResetPasswordRoute.page),
    AutoRoute(page: PasswordResetConfirmationRoute.page),
  ];
}
