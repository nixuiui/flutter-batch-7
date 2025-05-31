import 'package:flutter/material.dart';
import 'package:flutter_batch_7/pages/day_4/listview_builder_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var selectedTeam = {
    "Manchester United",
    "Chelsea FC"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Card(
            child: ListTile(
              title: Text("Selected Team: ${selectedTeam.join(", ")}"),
              subtitle: const Text("Tap to change the team"),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () async {
                final result = await Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ListViewBuilderScreen(
                    selectedTeam: selectedTeam,
                  ),
                ));
                if(result != null) {
                  setState(() {
                    selectedTeam = result as Set<String>;
                  });
                }
              },
            ),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) => const ListViewBuilderScreen(),
              ));
            }, 
            child: Text("Football Team (Replacement)"),
          )
        ],
      ),
    );
  }
}