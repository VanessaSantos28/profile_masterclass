import 'package:flutter/material.dart';

import '../shared/app_images.dart';
import 'button_widget.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Button(
            iconImage: AppImages.target,
            title: 'Atividades',
            imageSize: 1,
          ),
          Container(
            height: 46,
            width: .2,
            color: Theme.of(context).colorScheme.secondary,
          ),
          Button(
            iconImage: AppImages.github,
            title: "Repositórios",
            imageSize: 7,
          ),
          Container(
            height: 46,
            width: .2,
            color: Theme.of(context).colorScheme.secondary,
          ),
          Button(
            iconImage: AppImages.person,
            title: "Sobre o Dev",
            imageSize: 7,
          ),
        ],
      ),
    );
  }
}
