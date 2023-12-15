import 'package:flutter/material.dart';

class MainImage extends StatelessWidget {
  const MainImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/main_image.png',
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.fitWidth,
      alignment: Alignment.topCenter,
    );
  }
}
