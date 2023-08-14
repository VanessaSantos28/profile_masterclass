import 'package:flutter/material.dart';
import '../../widgets/app_bar_Widget.dart';
import '../../widgets/bottom_button.dart';

class RepositoryPage extends StatelessWidget {
  const RepositoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBarWidget(appBarTitle: "Repositórios")),
      body: Container(
        color: Theme.of(context).colorScheme.background,
      ),
      bottomNavigationBar: const BottomButton(),
    );
  }
}
