import 'package:flutter/material.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/standard_padding.dart';

class DrawerTileWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool dangerousArea;
  final Color backgroundColor;
  final Function()? onTap;

  const DrawerTileWidget({
    super.key,
    required this.icon,
    required this.title,
    this.dangerousArea = false,
    this.onTap,
  }) : backgroundColor =
            dangerousArea ? const Color(0xFFf7a5a6) : const Color(0xFFe6e6e6);

  @override
  Widget build(BuildContext context) {
    return StandardPadding.vertical(
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: standardBorderRadius,
        ),
        child: ListTile(
          leading: Icon(
            icon,
            color: darkColor,
          ),
          titleTextStyle: Theme.of(context)
              .textTheme
              .labelMedium
              ?.copyWith(color: darkColor),
          title: StandardPadding.horizontal(
            child: Text(title),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 13,
          ),
          horizontalTitleGap: 0,
          contentPadding: StandardPadding.edgeInsetsSymmetric(
            horizontalFactor: 1,
            context: context,
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
