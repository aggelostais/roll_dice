import 'package:flutter/material.dart';
import 'package:roll_dice/gradient_container.dart';

// The main function is the starting point for all our Flutter apps
// It is executed automatically when the app is started
void main() {
  // runApp() is a function that returns a widget as the root of the widget tree
  // The widget tree is a hierarchy of widgets that describes the user interface
  runApp(
    const MaterialApp( //MaterialApp build() method is executed
      home: Scaffold( // Scaffold build() method is executed
        // backgroundColor: Colors.lightBlueAccent,
        body: GradientContainer( //GradientContainer build() method is executed
          colorsList:[Color.fromARGB(255, 110, 59, 96), Colors.white]), // colorList name required parameter
      ),
    ),
  );
}
