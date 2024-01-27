import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:listzen/presentation/core/theming/style.dart';

const iconData = Icons.arrow_back;
const smallIconSize = 16.0;

class BackToRouteLink extends StatelessWidget {
  final String text;
  final String? routeName;
  final MainAxisAlignment alignment;
  final EdgeInsetsGeometry padding;
  final TextStyle? textStyle;
  final Color color;
  final bool? smallIcon;

  const BackToRouteLink({
    super.key,
    required this.text,
    this.routeName,
    this.alignment = MainAxisAlignment.center,
    this.padding = EdgeInsets.zero,
    this.textStyle,
    this.color = greyColor,
    this.smallIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => routeName != null
          ? AutoRouter.of(context).popUntilRouteWithName(routeName!)
          : AutoRouter.of(context).pop(),
      child: Padding(
        padding: padding,
        child: Row(
          mainAxisAlignment: alignment,
          children: [
            Icon(
              iconData,
              color: color,
              size: smallIcon! ? smallIconSize : null,
            ),
            const SizedBox(width: 5),
            Text(
              text,
              style: textStyle != null
                  ? textStyle!.copyWith(color: color)
                  : Theme.of(context)
                      .textTheme
                      .labelMedium
                      ?.copyWith(color: color),
            ),
          ],
        ),
      ),
    );
  }
}
