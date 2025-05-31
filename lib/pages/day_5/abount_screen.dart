import 'package:flutter/material.dart';

class AbountScreen extends StatefulWidget {
  const AbountScreen({super.key});

  @override
  State<AbountScreen> createState() => _AbountScreenState();
}

class _AbountScreenState extends State<AbountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Page'),
      ),
      body: Center(
        child: Text(
          'This is the About Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}