import 'package:flutter/material.dart';
import 'package:flutter_batch_7/widgets/counter_layout.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    _counter = 10;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Action for settings button
            },
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 16,
          children: [
            Image.asset(
              "assets/ic_launcher.png",
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPDASivikJ6oJqQ0hGEwgw1EJjNzwHm3kFhw&s",
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            CounterLayoutWidget(
              counter: _counter,
              onNumberPressed: _incrementCounter,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 16,
              children: [
                ElevatedButton(
                  onPressed: () {}, 
                  child: Text("Click Me"),
                ),
                FilledButton(
                  onPressed: () {}, 
                  child: Text("Click Me"),
                ),
                OutlinedButton(
                  onPressed: () {}, 
                  child: Text("Click Me"),
                ),
              ],
            ),
            SegmentedButton(
              segments: const [
                ButtonSegment(
                  value: "Segment 1",
                  label: Text("Segment 1"),
                ),
                ButtonSegment(
                  value: "Segment 2",
                  label: Text("Segment 2"),
                ),
                ButtonSegment(
                  value: "Segment 3",
                  label: Text("Segment 3"),
                ),
              ],
              selected: {"Segment 1"},
            )
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