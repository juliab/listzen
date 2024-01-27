import 'package:flutter/material.dart';
import 'package:listzen/presentation/auth/components/top_image.dart';
import 'package:listzen/presentation/core/keyboard_dismisser.dart';
import 'package:listzen/presentation/core/theming/style.dart';

class AuthPageScaffold extends StatelessWidget {
  final Widget form;

  const AuthPageScaffold({
    super.key,
    required this.form,
  });

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            const MainImage(),
            LayoutBuilder(
              builder: (context, viewportConstraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: viewportConstraints.maxHeight,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        form,
                        _buildContainerToCoverKeyboard(context),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContainerToCoverKeyboard(BuildContext context) =>
      AnimatedContainer(
        duration: const Duration(milliseconds: 10),
        height: MediaQuery.of(context).viewInsets.bottom, // keyboard height
        color: backgroundColor,
      );
}
