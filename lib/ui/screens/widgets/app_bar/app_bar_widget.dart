import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: const [
        ThemeChangerWidget(),
      ],
      title: const Text('Nikola Jović'),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
