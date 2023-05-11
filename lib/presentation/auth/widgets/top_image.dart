import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import 'package:success_check/presentation/core/theming/style.dart';

class TopImage extends StatelessWidget {
  final String text;

  const TopImage({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
          // if (isKeyboardVisible) {
          //   //final viewInsets = MediaQuery.of(context).viewInsets.bottom;
          //   //print('Keyboard height is $viewInsets');
          //   return Image.asset(
          //     'assets/sticky_note.jpg',
          //     height: 120,
          //     width: double.maxFinite,
          //     fit: BoxFit.fitWidth,
          //   );
          // }
          // final viewInsets = MediaQuery.of(context).viewInsets.bottom;
          // print('Keyboard height is $viewInsets');
          // final containerHeight = 500 - viewInsets;
          return Stack(
            children: [
              Image.asset(
                'assets/sticky_note.jpg',
                height: 370,
                fit: BoxFit.fitHeight,
              ),
              Positioned(
                top: 125,
                left: 140,
                child: Text(
                  text,
                  style: stickyNoteTextStyle,
                ),
              ),
            ],
          );
        }),
        Container(
          height: 40,
          decoration: cardTopDecoration,
        ),
      ],
    );
  }
}
