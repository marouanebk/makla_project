import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leading: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 20.0),
        child: IconButton(
          icon: const Icon(
            Icons.settings,
            size: 33,
            color: Color(0xFFF56210),
          ),
          onPressed: () {},
        ),
      ),
      title: const Text(
        'M',
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white, fontFamily: 'Digory Doodles', fontSize: 10),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0, right: 20.0),
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
