import 'package:flutter/material.dart';

class IconsImage extends StatelessWidget {
  final String iconImage;
  const IconsImage({super.key, required this.iconImage});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      iconImage,
      scale: 2,
    );
  }
}
