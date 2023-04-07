import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:success_check/presentation/core/theming/themes.dart';
import 'package:success_check/presentation/routes/app_router.dart';

class BackToLoginLink extends StatelessWidget {
  const BackToLoginLink({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).popUntilRouteWithName(SignInRoute.name);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.arrow_back,
            color: greyColor,
          ),
          const SizedBox(width: 8),
          Text(
            'Back to login',
            style: TextStyle(
              color: greyColor,
            ),
          ),
        ],
      ),
    );
  }
}
