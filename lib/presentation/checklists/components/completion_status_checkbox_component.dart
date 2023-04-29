import 'package:flutter/material.dart';

import 'package:success_check/presentation/core/theming/themes.dart';

class CompletionStatusCheckbox extends StatelessWidget {
  final bool Function() isCompleted;
  final Function(bool?) onChanged;
  final Decoration decoration;
  final Color checkColor;
  final double? size;

  const CompletionStatusCheckbox({
    super.key,
    required this.isCompleted,
    required this.onChanged,
    required this.decoration,
    required this.checkColor,
    this.size = checkboxSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      width: size,
      height: size,
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
