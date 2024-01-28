import 'package:flutter/material.dart';
import 'package:listzen/presentation/auth/components/top_image.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/keyboard_dismisser.dart';

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
                        _buildTopSafeAreaSpacing(context),
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

  Widget _buildTopSafeAreaSpacing(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).padding.top);
  }

  Widget _buildContainerToCoverKeyboard(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 10),
      height: MediaQuery.of(context).viewInsets.bottom, // keyboard height
      color: whiteColor,
    );
  }
}
