import 'package:flutter/material.dart';
import 'package:listzen/presentation/core/theming/style.dart';

class AuthTextField extends StatelessWidget {
  final String labelName;
  final Widget? validCheckbox;
  final Widget? linkOnTheRight;
  final bool obscureText;
  final Function(String) onChanged;
  final String? Function()? validator;

  const AuthTextField({
    super.key,
    required this.labelName,
    this.validCheckbox,
    this.linkOnTheRight,
    this.obscureText = false,
    required this.onChanged,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AuthFieldLabel(
              labelName: labelName,
              validCheckbox: validCheckbox,
            ),
            if (linkOnTheRight != null) ...[
              linkOnTheRight!,
            ]
          ],
        ),
        const SizedBox(height: 6),
        TextFormField(
            autocorrect: false,
            obscureText: obscureText,
            onChanged: onChanged,
            validator: (value) {
              if (value != null && value.isEmpty) {
                return "Field is required";
              }
              return validator?.call();
            }),
      ],
    );
  }
}

class AuthFieldLabel extends StatelessWidget {
  final String labelName;
  final Widget? validCheckbox;

  const AuthFieldLabel({
    super.key,
    required this.labelName,
    required this.validCheckbox,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          labelName,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        if (validCheckbox != null) ...[
          const SizedBox(width: 5),
          validCheckbox!,
        ]
      ],
    );
  }
}

class ValidCheckbox extends StatelessWidget {
  const ValidCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.check,
      color: greenColor,
    );
  }
}
