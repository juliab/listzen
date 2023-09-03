import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/routes/app_router.dart';

class BackToLoginLink extends StatelessWidget {
  const BackToLoginLink({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          AutoRouter.of(context).popUntilRouteWithName(SignInRoute.name),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.arrow_back,
            color: greyColor,
          ),
          const SizedBox(width: 8),
          Text(
            'Back to login',
            style: Theme.of(context)
                .textTheme
                .labelLarge
                ?.copyWith(color: greyColor),
          ),
        ],
      ),
    );
  }
}
