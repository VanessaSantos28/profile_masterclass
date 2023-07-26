import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String buttonTitle;
  final String buttonImage;
  final double? imageSize;

  const BottomButton(
      {super.key,
      required this.buttonTitle,
      required this.buttonImage,
      this.imageSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Column(
        children: [
          TextButton(
              onPressed: () {},
              child: Image.asset(
                buttonImage,
                scale: imageSize,
                color: const Color(0xffEDF4F8),
              )),
          Text(
            buttonTitle,
            style: const TextStyle(
                color: Color(0xffEDF4F8),
                fontSize: 12,
                fontFamily: "Montserrat"),
          )
        ],
      ),
    );
  }
}
