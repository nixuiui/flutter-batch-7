import 'package:flutter/material.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("ListView Screen"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.grey,
            child: Text("Item 1")
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.red,
            child: Text("Item 1")
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  width: 100,
                  color: Colors.purple,
                  child: Text("Item 1")
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  width: 100,
                  color: Colors.brown,
                  child: Text("Item 1")
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  width: 100,
                  color: Colors.purple,
                  child: Text("Item 1")
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  width: 100,
                  color: Colors.brown,
                  child: Text("Item 1")
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  width: 100,
                  color: Colors.purple,
                  child: Text("Item 1")
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  width: 100,
                  color: Colors.brown,
                  child: Text("Item 1")
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  width: 100,
                  color: Colors.purple,
                  child: Text("Item 1")
                ),
                Container(
                  padding: EdgeInsets.all(16),
                  width: 100,
                  color: Colors.brown,
                  child: Text("Item 1")
                ),
              ],
            )
          ),
          ListView(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            padding: EdgeInsets.zero,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                color: Colors.blue,
                child: Text("Item 1")
              ),
              Container(
                padding: EdgeInsets.all(16),
                color: Colors.greenAccent,
                child: Text("Item 1")
              ),
              Container(
                padding: EdgeInsets.all(16),
                color: Colors.blue,
                child: Text("Item 1")
              ),
              Container(
                padding: EdgeInsets.all(16),
                color: Colors.greenAccent,
                child: Text("Item 1")
              ),
              Container(
                padding: EdgeInsets.all(16),
                color: Colors.blue,
                child: Text("Item 1")
              ),
              Container(
                padding: EdgeInsets.all(16),
                color: Colors.greenAccent,
                child: Text("Item 1")
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.grey,
            child: Text("Item 1")
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.red,
            child: Text("Item 1")
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.grey,
            child: Text("Item 1")
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.red,
            child: Text("Item 1")
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.grey,
            child: Text("Item 1")
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.red,
            child: Text("Item 1")
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.grey,
            child: Text("Item 1")
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.red,
            child: Text("Item 1")
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.grey,
            child: Text("Item 1")
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.red,
            child: Text("Item 1")
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.grey,
            child: Text("Item 1")
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.red,
            child: Text("Item 1")
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.grey,
            child: Text("Item 1")
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.red,
            child: Text("Item 1")
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.grey,
            child: Text("Item 1")
          ),
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.red,
            child: Text("Item 1")
          ),
        ],
      ),
    );
  }
}