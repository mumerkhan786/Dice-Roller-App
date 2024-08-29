import 'package:flutter/material.dart';
import 'package:dice_roller/gradient_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const GradientContainer(
      Color.fromARGB(255, 29, 2, 76),
      Color.fromARGB(255, 44, 11, 103),
    );
  }
}
