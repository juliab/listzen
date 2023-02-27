import 'package:auto_route/auto_route.dart';
import 'package:success_check/presentation/checklists/checklists_overview/checklists_overview_page.dart';
import 'package:success_check/presentation/sign_in/sign_in_page.dart';
import 'package:success_check/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: ChecklistsOverviewPage),
  ],
)
class $AppRouter {}
