import 'package:flutter/material.dart';
import 'dart:math';
import 'package:roll_dice/styled_text.dart';

// Only one instance of Random is created which is more efficient
final randomizer=Random();

// When working with stateful widgets two classes are created 
// This widget class stays constant and does not change
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key}); // Constructor function

  // This method creates and returns the state object associated with this widget.
  // It overrides the createState method from the StatefulWidget class.

  // Returns a State object, managing the state of the DiceRoller widget
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState(); //
  }
}

// _DiceRollerState is a private class that is only visible to the dice_roller.dart file
// This state object can change
class _DiceRollerState extends State<DiceRoller> {
  // var activeDiceImage= 'assets/images/dice-$randomNumber.png';
  var currentDiceRoll=randomizer.nextInt(6)+1; // Generate a random number between 1 and 6

  // To re-execute the build method we have to use the setState method
  void rollDice() {
    // Update the state passing a function to the setState method
    setState(() {
      // Not optimal cause we are creating a new Random object every time the method is called
      // currentDiceRoll=Random().nextInt(6)+1;
      currentDiceRoll=randomizer.nextInt(6)+1; // Generate a random number between 1 and 6
    });
  }
  
  // The build method is re-executed when the state of the widget changes
  @override
  Widget build(context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min, //the size the column should take in set to min
          children: [
            const StyledText('Lets play!'), // Display the text 'Lets play!'
            Image.asset(
              'assets/images/dice-$currentDiceRoll.png',
              width: 200,
            ), // Display an image from the assets folder
            const SizedBox(height: 20), // Add a sized empty box between the image and the button
            ElevatedButton(
                onPressed: rollDice,
                style: ElevatedButton.styleFrom(
                  // padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20), //space between the text and the button border
                    padding: const EdgeInsets.all(20),
                    foregroundColor: const Color.fromARGB(255, 156, 155, 155),
                    textStyle: const TextStyle(fontSize: 28)),
                child: const Text('Roll Dice')),
          ],
        );


  }
}