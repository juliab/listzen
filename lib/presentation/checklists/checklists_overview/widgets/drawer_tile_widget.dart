import 'package:flutter/material.dart';
import 'package:listzen/presentation/core/theming/style.dart';

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
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: standardBorderRadius,
      ),
      child: ListTile(
        leading: Icon(icon),
        titleTextStyle:
            Theme.of(context).textTheme.titleMedium?.copyWith(color: darkColor),
        title: Text(title),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 15,
        ),
        horizontalTitleGap: 0,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        onTap: onTap,
      ),
    );
  }
}
