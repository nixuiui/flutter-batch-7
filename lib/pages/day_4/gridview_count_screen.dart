import 'package:flutter/material.dart';

class GridviewCountScreen extends StatefulWidget {
  const GridviewCountScreen({super.key});

  @override
  State<GridviewCountScreen> createState() => _GridviewCountScreenState();
}

class _GridviewCountScreenState extends State<GridviewCountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView Example"),
      ),
      body: GridView.count(
        crossAxisCount: 3, // Number of columns
        mainAxisSpacing: 2, // Space between rows
        crossAxisSpacing: 2, // Space between columns
        childAspectRatio: 3/4, // Aspect ratio of each item
        padding: const EdgeInsets.all(10.0),
        children: [
          Card(
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'Item 1',
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Card(
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'Item 1',
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Card(
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'Item 1',
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Card(
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'Item 1',
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Card(
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'Item 1',
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Card(
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'Item 1',
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      )
    );
  }
}