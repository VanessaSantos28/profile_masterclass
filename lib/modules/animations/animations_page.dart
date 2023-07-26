import 'package:flutter/material.dart';

import '../../widgets/app_bar_Widget.dart';
import '../../widgets/exercises_card.dart';

class AnimationsPage extends StatelessWidget {
  const AnimationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff121517),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBarWidget(appBarTitle: "Animações"),
      ),
      body: ExercisesCard(),
    );
  }
}
