import 'package:flutter/material.dart';

import 'package:success_check/presentation/core/theming/themes.dart';

class CompletedCheckbox extends StatelessWidget {
  final bool Function() isCompleted;
  final Function(bool?) onChanged;
  final Decoration decoration;
  final Color checkColor;

  const CompletedCheckbox({
    super.key,
    required this.isCompleted,
    required this.onChanged,
    required this.decoration,
    required this.checkColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      width: checkboxSize,
      height: checkboxSize,
      child: Transform.scale(
        scale: 1.5,
        child: Checkbox(
          onChanged: onChanged,
          value: isCompleted(),
          checkColor: checkColor,
        ),
      ),
    );
  }
}
