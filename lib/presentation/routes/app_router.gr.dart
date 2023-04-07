// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ResetPasswordPage(),
      );
    },
    PasswordResetConfirmationRoute.name: (routeData) {
      final args = routeData.argsAs<PasswordResetConfirmationRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PasswordResetConfirmationPage(
          key: args.key,
          emailAddress: args.emailAddress,
        ),
      );
    },
    SignInRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpPage(),
      );
    },
    ChecklistFormRoute.name: (routeData) {
      final args = routeData.argsAs<ChecklistFormRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ChecklistFormPage(
          key: args.key,
          editedChecklistOption: args.editedChecklistOption,
        ),
      );
    },
    ChecklistsOverviewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChecklistsOverviewPage(),
      );
    },
  };
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ResetPasswordPage]
class ResetPasswordRoute extends PageRouteInfo<void> {
  const ResetPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PasswordResetConfirmationPage]
class PasswordResetConfirmationRoute
    extends PageRouteInfo<PasswordResetConfirmationRouteArgs> {
  PasswordResetConfirmationRoute({
    Key? key,
    required String emailAddress,
    List<PageRouteInfo>? children,
  }) : super(
          PasswordResetConfirmationRoute.name,
          args: PasswordResetConfirmationRouteArgs(
            key: key,
            emailAddress: emailAddress,
          ),
          initialChildren: children,
        );

  static const String name = 'PasswordResetConfirmationRoute';

  static const PageInfo<PasswordResetConfirmationRouteArgs> page =
      PageInfo<PasswordResetConfirmationRouteArgs>(name);
}

class PasswordResetConfirmationRouteArgs {
  const PasswordResetConfirmationRouteArgs({
    this.key,
    required this.emailAddress,
  });

  final Key? key;

  final String emailAddress;

  @override
  String toString() {
    return 'PasswordResetConfirmationRouteArgs{key: $key, emailAddress: $emailAddress}';
  }
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute({List<PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChecklistFormPage]
class ChecklistFormRoute extends PageRouteInfo<ChecklistFormRouteArgs> {
  ChecklistFormRoute({
    Key? key,
    required Option<Checklist> editedChecklistOption,
    List<PageRouteInfo>? children,
  }) : super(
          ChecklistFormRoute.name,
          args: ChecklistFormRouteArgs(
            key: key,
            editedChecklistOption: editedChecklistOption,
          ),
          initialChildren: children,
        );

  static const String name = 'ChecklistFormRoute';

  static const PageInfo<ChecklistFormRouteArgs> page =
      PageInfo<ChecklistFormRouteArgs>(name);
}

class ChecklistFormRouteArgs {
  const ChecklistFormRouteArgs({
    this.key,
    required this.editedChecklistOption,
  });

  final Key? key;

  final Option<Checklist> editedChecklistOption;

  @override
  String toString() {
    return 'ChecklistFormRouteArgs{key: $key, editedChecklistOption: $editedChecklistOption}';
  }
}

/// generated route for
/// [ChecklistsOverviewPage]
class ChecklistsOverviewRoute extends PageRouteInfo<void> {
  const ChecklistsOverviewRoute({List<PageRouteInfo>? children})
      : super(
          ChecklistsOverviewRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChecklistsOverviewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
