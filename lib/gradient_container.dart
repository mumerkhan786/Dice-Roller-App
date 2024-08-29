import 'package:dice_roller/dice_roller.dart';
import 'package:flutter/material.dart';

const alignmentStart = Alignment.topLeft;
const alignmentEnd = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: alignmentStart,
          end: alignmentEnd,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
