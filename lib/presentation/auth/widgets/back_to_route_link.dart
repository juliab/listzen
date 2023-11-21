import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:listzen/presentation/core/theming/style.dart';

class BackToRouteLink extends StatelessWidget {
  final String text;
  final String routeName;
  final MainAxisAlignment alignment;

  const BackToRouteLink({
    super.key,
    required this.text,
    required this.routeName,
    this.alignment = MainAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).popUntilRouteWithName(routeName),
      child: Row(
        mainAxisAlignment: alignment,
        children: [
          const Icon(
            Icons.arrow_back,
            color: greyColor,
          ),
          const SizedBox(width: 8),
          Text(
            text,
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
