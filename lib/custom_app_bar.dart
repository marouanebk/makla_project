import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leading: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 8.0),
        child: IconButton(
          icon: const Icon(
            Icons.settings,
            size: 33,
            color: Color(0xFFF56210),
          ),
          onPressed: () {},
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 15.0, right: 8.0),
          child: IconButton(
            icon: const Icon(
              Icons.help_outline,
              size: 33,
              color: Color(0xFFF56210),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
