import 'package:flutter/material.dart';


// StyledText class
class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key}); //const again because after initializing the value of the class variable, it does not change
  //{super.key} forwarding the key to the super class
  //this.text sets the value of the class variable with the value passed to the constructor
  // we can add more parameters to accept in the constructor
  
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 28,
        color: Colors.black,
      ),
    );
  }
}
