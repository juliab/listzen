// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:dartz/dartz.dart' as _i9;
import 'package:flutter/material.dart' as _i8;

import '../../domain/checklists/checklist.dart' as _i10;
import '../auth/reset_password_page.dart' as _i6;
import '../auth/sign_in_page.dart' as _i2;
import '../auth/sign_up_page.dart' as _i5;
import '../checklists/checklist_form/checklist_form_page_old.dart' as _i4;
import '../checklists/checklists_overview/checklists_overview_page_old.dart'
    as _i3;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    SignInPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignInPage(),
      );
    },
    ChecklistsOverviewPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ChecklistsOverviewPage(),
      );
    },
    ChecklistFormPageRoute.name: (routeData) {
      final args = routeData.argsAs<ChecklistFormPageRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.ChecklistFormPage(
          key: args.key,
          editedChecklistOption: args.editedChecklistOption,
        ),
      );
    },
    SignUpPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.SignUpPage(),
      );
    },
    ResetPasswordPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ResetPasswordPage(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          SplashPageRoute.name,
          path: '/',
        ),
        _i7.RouteConfig(
          SignInPageRoute.name,
          path: '/sign-in-page',
        ),
        _i7.RouteConfig(
          ChecklistsOverviewPageRoute.name,
          path: '/checklists-overview-page',
        ),
        _i7.RouteConfig(
          ChecklistFormPageRoute.name,
          path: '/checklist-form-page',
        ),
        _i7.RouteConfig(
          SignUpPageRoute.name,
          path: '/sign-up-page',
        ),
        _i7.RouteConfig(
          ResetPasswordPageRoute.name,
          path: '/reset-password-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i7.PageRouteInfo<void> {
  const SplashPageRoute()
      : super(
          SplashPageRoute.name,
          path: '/',
        );

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i7.PageRouteInfo<void> {
  const SignInPageRoute()
      : super(
          SignInPageRoute.name,
          path: '/sign-in-page',
        );

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.ChecklistsOverviewPage]
class ChecklistsOverviewPageRoute extends _i7.PageRouteInfo<void> {
  const ChecklistsOverviewPageRoute()
      : super(
          ChecklistsOverviewPageRoute.name,
          path: '/checklists-overview-page',
        );

  static const String name = 'ChecklistsOverviewPageRoute';
}

/// generated route for
/// [_i4.ChecklistFormPage]
class ChecklistFormPageRoute
    extends _i7.PageRouteInfo<ChecklistFormPageRouteArgs> {
  ChecklistFormPageRoute({
    _i8.Key? key,
    required _i9.Option<_i10.Checklist> editedChecklistOption,
  }) : super(
          ChecklistFormPageRoute.name,
          path: '/checklist-form-page',
          args: ChecklistFormPageRouteArgs(
            key: key,
            editedChecklistOption: editedChecklistOption,
          ),
        );

  static const String name = 'ChecklistFormPageRoute';
}

class ChecklistFormPageRouteArgs {
  const ChecklistFormPageRouteArgs({
    this.key,
    required this.editedChecklistOption,
  });

  final _i8.Key? key;

  final _i9.Option<_i10.Checklist> editedChecklistOption;

  @override
  String toString() {
    return 'ChecklistFormPageRouteArgs{key: $key, editedChecklistOption: $editedChecklistOption}';
  }
}

/// generated route for
/// [_i5.SignUpPage]
class SignUpPageRoute extends _i7.PageRouteInfo<void> {
  const SignUpPageRoute()
      : super(
          SignUpPageRoute.name,
          path: '/sign-up-page',
        );

  static const String name = 'SignUpPageRoute';
}

/// generated route for
/// [_i6.ResetPasswordPage]
class ResetPasswordPageRoute extends _i7.PageRouteInfo<void> {
  const ResetPasswordPageRoute()
      : super(
          ResetPasswordPageRoute.name,
          path: '/reset-password-page',
        );

  static const String name = 'ResetPasswordPageRoute';
}
