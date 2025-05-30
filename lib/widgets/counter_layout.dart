import 'package:flutter/material.dart';

class CounterLayoutWidget extends StatelessWidget {

  final int counter;
  final Function()? onNumberPressed;

  const CounterLayoutWidget({
    super.key,
    required this.counter,
    this.onNumberPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'You have pushed the\nbutton this many timesss:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            InkWell(
              onTap: onNumberPressed?.call,
              child: Text(
                counter.toString(),
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}