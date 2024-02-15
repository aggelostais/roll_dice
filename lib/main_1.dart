import 'package:flutter/material.dart';

// This class defines the stateful home page of your application.
class MyHomePage extends StatefulWidget {
  // This constructor is used to initialize the widget with a title.
  const MyHomePage({super.key, required this.title});

  // This field stores the title of the page.
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// This class defines the state for the MyHomePage widget.
class _MyHomePageState extends State<MyHomePage> {
  // This integer variable stores the counter value.
  int _counter = 0;

  // This method increments the counter value and updates the state.
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // This method builds the user interface of the home page.
  @override
  Widget build(BuildContext context) {
    // This widget defines the layout of the app's screen. The values passed are shown inside Scaffold widget.
    return Scaffold(
      backgroundColor: Colors.white,
      
      // This widget defines the app bar at the top of the screen.
      appBar: AppBar(
        // Set the background color of the app bar.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Set the title of the app bar using the value stored in the widget.title field.
        title: Text(widget.title),
      ),
      // This widget defines the main content area of the screen.
      body: Center(
        // This widget positions its child in the center of the screen.
        child: Column(
          // This widget arranges its children vertically.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // This widget displays a text message.
            const Text(
              'You have pushed the button this many times:',
            ),
            // This widget displays the current counter value.
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Text(
              'This is a new app!',
                style: TextStyle(fontSize: 28),
            ),
          ],
        ),
      ),
      // This widget adds a floating action button to the screen.
      floatingActionButton: FloatingActionButton(
        // This function is called when the user taps the button.
        onPressed: _incrementCounter,
        // This text is displayed when the user long-presses the button.
        tooltip: 'Increment',
        // This icon is displayed on the button.
        child: const Icon(Icons.add),
      ),
    );
  }
}