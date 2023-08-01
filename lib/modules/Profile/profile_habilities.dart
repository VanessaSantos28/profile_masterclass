import 'package:flutter/material.dart';

import '../../shared/contants.dart';

class ProfileHabilities extends StatelessWidget {
  const ProfileHabilities({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 181,
      width: 400,
      child: Card(
        color: kCardColor,
        child: Container(
          padding: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            color: kCardColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "Dart/Flutter",
                    style: kDescriptionText,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 9,
                        width: 255,
                        decoration: BoxDecoration(
                            color: kProgressIndicator,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      Container(
                        height: 9,
                        width: 194,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
