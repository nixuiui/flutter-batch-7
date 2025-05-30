import 'package:flutter/material.dart';

class SampleExpandedScreen extends StatefulWidget {
  const SampleExpandedScreen({super.key});

  @override
  State<SampleExpandedScreen> createState() => _SampleExpandedScreenState();
}

class _SampleExpandedScreenState extends State<SampleExpandedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Sample Expanded Screen"),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
              height: 100,
              child: const Center(
                child: Text(
                  "Item 1",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
              height: 100,
              child: const Center(
                child: Text(
                  "Item 2",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}