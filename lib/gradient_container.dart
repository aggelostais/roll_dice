import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

// final startAlignment= getAlignment; // The value is not compile time constant, is known when it is executed
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // Constructor, used for initializations and to pass parameters to the class
  // Parameters can then be stored in internal variables
  // super() is used to call the constructor of the parent class
  // colorList is a required named parameter
  const GradientContainer({super.key, required this.colorsList});

  // convient constructor with predefined colors
  // multiple constructors can be defined in a class
  const GradientContainer.purple({super.key})
      : colorsList = const [Color.fromARGB(255, 110, 59, 96), Colors.white];

  final List<Color> colorsList;

  @override // Overide the default StatelessWidget build method
  //build method defines which widgets will be displayed 
  Widget build(context) {
    // context contains useful metadata
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: colorsList,
        ),
      ),
      child: const Center(
        // Center only gets one Widget child as argument
        child: DiceRoller(),
      ),
    );
  }
}
