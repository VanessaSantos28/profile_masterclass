import 'package:flutter/material.dart';
import 'package:masterclass_app_exercicios/shared/contants.dart';

import '../../widgets/app_bar_Widget.dart';
import '../../widgets/bottom_button.dart';

class RepositoryPage extends StatelessWidget {
  const RepositoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBarWidget(appBarTitle: "Repositórios")),
      body: Container(
        color: kBackgroundColor,
      ),
      bottomNavigationBar: const BottomButton(),
    );
  }
}
