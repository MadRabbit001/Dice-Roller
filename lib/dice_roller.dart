import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var image = 'assets/images/dice-1.png';

  void rollDiceAnimation() {
    const animationDuration = Duration(milliseconds: 150);
    const animationSteps = 10;
    int currentStep = 0;
    Timer.periodic(animationDuration, (timer) {
      if (currentStep < animationSteps) {
        // Generate a random number to simulate dice rolling animation.
        var num = Random().nextInt(6) + 1;
        image = 'assets/images/dice-$num.png';
        currentStep++;
        // Call setState to rebuild the UI and display the new image.
        setState(() {});
      } else {
        // Stop the animation after the desired steps.
        timer.cancel();
        // Perform the final roll to get the actual random result.
        rollDice();
      }
    });
  }

  void rollDice() {
    var num = Random().nextInt(6) + 1;
    print(num);

    setState(() {
      image = 'assets/images/dice-$num.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          image,
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDiceAnimation,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
