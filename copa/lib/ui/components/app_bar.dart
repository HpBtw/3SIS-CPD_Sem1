import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {

  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      elevation: 0,
      title: Text('Copa do Mundo'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}