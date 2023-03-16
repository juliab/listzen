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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:dartz/dartz.dart' as _i7;
import 'package:flutter/material.dart' as _i6;

import '../../domain/checklists/checklist.dart' as _i8;
import '../checklists/checklist_form/checklist_form_page.dart' as _i4;
import '../checklists/checklists_overview/checklists_overview_page.dart' as _i3;
import '../sign_in/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    SignInPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignInPage(),
      );
    },
    ChecklistsOverviewPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ChecklistsOverviewPage(),
      );
    },
    ChecklistFormPageRoute.name: (routeData) {
      final args = routeData.argsAs<ChecklistFormPageRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.ChecklistFormPage(
          key: args.key,
          editedChecklistOption: args.editedChecklistOption,
        ),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          SplashPageRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          SignInPageRoute.name,
          path: '/sign-in-page',
        ),
        _i5.RouteConfig(
          ChecklistsOverviewPageRoute.name,
          path: '/checklists-overview-page',
        ),
        _i5.RouteConfig(
          ChecklistFormPageRoute.name,
          path: '/checklist-form-page',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i5.PageRouteInfo<void> {
  const SplashPageRoute()
      : super(
          SplashPageRoute.name,
          path: '/',
        );

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i5.PageRouteInfo<void> {
  const SignInPageRoute()
      : super(
          SignInPageRoute.name,
          path: '/sign-in-page',
        );

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.ChecklistsOverviewPage]
class ChecklistsOverviewPageRoute extends _i5.PageRouteInfo<void> {
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
    extends _i5.PageRouteInfo<ChecklistFormPageRouteArgs> {
  ChecklistFormPageRoute({
    _i6.Key? key,
    required _i7.Option<_i8.Checklist> editedChecklistOption,
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

  final _i6.Key? key;

  final _i7.Option<_i8.Checklist> editedChecklistOption;

  @override
  String toString() {
    return 'ChecklistFormPageRouteArgs{key: $key, editedChecklistOption: $editedChecklistOption}';
  }
}
