import 'package:flutter/material.dart';
import 'package:makla/custom_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
      ),
    );
  }
}
