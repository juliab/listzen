import 'package:flutter/material.dart';

class MainImage extends StatelessWidget {
  const MainImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/main_image.jpg',
      height: MediaQuery.of(context).size.height,
      fit: BoxFit.fitHeight,
    );
  }
}
