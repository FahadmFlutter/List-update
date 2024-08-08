import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScreenValueNofier extends StatelessWidget {
  ScreenValueNofier({super.key});

  // this 'ValueNotifier' work as 'setState' in 'StatelessWidget'.

  // ignore: prefer_final_fields
  ValueNotifier<int> _counter = ValueNotifier(0);

  void _incrementCounter() {
    _counter.value = _counter.value + 1; // the '.value' came from ValueNotifier.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),

            // value chagneing here with 'ValueListenableBuilder'.
            ValueListenableBuilder(
                valueListenable: _counter, // <= main value
                builder: (BuildContext ctx, int newValue, Widget? child) {
                  return Text(
                    '$newValue',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
