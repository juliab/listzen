import 'package:flutter/material.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/spacing.dart';

class AuthTextField extends StatelessWidget {
  final String labelName;
  final Widget? validCheckbox;
  final Widget? link;
  final bool obscureText;
  final Function(String) onChanged;
  final String? Function()? validator;

  const AuthTextField({
    super.key,
    required this.labelName,
    this.validCheckbox,
    this.link,
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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _buildAuthFieldLabel(context),
            if (link != null) ...[
              link!,
            ]
          ],
        ),
        const Spacing.vertical(factor: 0.3),
        _buildTextFormField(context),
      ],
    );
  }

  Widget _buildAuthFieldLabel(BuildContext context) {
    return Row(
      children: [
        Text(
          labelName,
          style: Theme.of(context).textTheme.labelSmall,
        ),
        if (validCheckbox != null) ...[
          const Spacing.horizontal(factor: 0.5),
          validCheckbox!,
        ]
      ],
    );
  }

  Widget _buildTextFormField(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      obscureText: obscureText,
      onChanged: onChanged,
      validator: (value) {
        if (value != null && value.isEmpty) {
          return "Field is required";
        }
        return validator?.call();
      },
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
