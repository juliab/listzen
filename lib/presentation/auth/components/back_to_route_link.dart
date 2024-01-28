import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:listzen/presentation/auth/theming/style.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/spacing.dart';
import 'package:listzen/presentation/core/widgets/standard_padding.dart';

const iconData = Icons.arrow_back;

class BackToRouteLink extends StatelessWidget {
  final String text;
  final String? routeName;
  final MainAxisAlignment alignment;
  final Color color;

  const BackToRouteLink({
    super.key,
    required this.text,
    this.routeName,
    this.alignment = MainAxisAlignment.center,
    this.color = greyColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _pop(context),
      child: StandardPadding.vertical(
        child: Row(
          mainAxisAlignment: alignment,
          children: [
            _buildBackIcon(context),
            const Spacing.horizontal(factor: 0.3),
            _buildLinkText(context),
          ],
        ),
      ),
    );
  }

  void Function()? _pop(BuildContext context) {
    return () => routeName != null
        ? AutoRouter.of(context).popUntilRouteWithName(routeName!)
        : AutoRouter.of(context).pop();
  }

  Widget _buildBackIcon(BuildContext context) {
    return Icon(
      iconData,
      color: color,
      size: backIconSize(context),
    );
  }

  Widget _buildLinkText(BuildContext context) {
    return Text(
      text,
      style: authLinkTextStyle(context)?.copyWith(color: color),
    );
  }
}
