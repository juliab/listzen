import 'package:flutter/material.dart';

class MainImage extends StatelessWidget {
  const MainImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/colorful-sticky-notes.jpg',
      height: MediaQuery.of(context).size.height,
      fit: BoxFit.fitHeight,
    );
  }
}
