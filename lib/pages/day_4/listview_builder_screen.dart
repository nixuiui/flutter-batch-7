import 'package:flutter/material.dart';
import 'package:flutter_batch_7/widgets/football_team_item_card.dart';

class ListViewBuilderScreen extends StatefulWidget {

  final Set<String>? selectedTeam;

  const ListViewBuilderScreen({
    super.key,
    this.selectedTeam,
  });

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {

  var selectedTeam = <String>{};

  final footballTeams = [
    {
      "name": "Manchester United",
      "logo": "https://upload.wikimedia.org/wikipedia/en/thumb/7/7a/Manchester_United_FC_crest.svg/1200px-Manchester_United_FC_crest.svg.png",
      "stadium": "Old Trafford"
    },
    {
      "name": "Chelsea FC",
      "logo": "https://upload.wikimedia.org/wikipedia/id/thumb/c/cc/Chelsea_FC.svg/380px-Chelsea_FC.svg.png",
      "stadium": "Stamford Bridge"
    },
    {
      "name": "Liverpool FC",
      "logo": "https://upload.wikimedia.org/wikipedia/en/thumb/0/0c/Liverpool_FC.svg/1200px-Liverpool_FC.svg.png",
      "stadium": "Anfield",
    },
    {
      "name": "Arsenal FC",
      "logo": "https://upload.wikimedia.org/wikipedia/en/thumb/5/53/Arsenal_FC.svg/1200px-Arsenal_FC.svg.png",
      "stadium": "Emirates Stadium"
    },
    {
      "name": "Manchester City",
      "logo": "https://upload.wikimedia.org/wikipedia/id/thumb/e/eb/Manchester_City_FC_badge.svg/400px-Manchester_City_FC_badge.svg.png",
      "stadium": "Etihad Stadium"
    },
    {
      "name": "Tottenham Hotspur",
      "logo": "https://upload.wikimedia.org/wikipedia/en/thumb/b/b4/Tottenham_Hotspur.svg/1200px-Tottenham_Hotspur.svg.png",
      "stadium": "Tottenham Hotspur Stadium"
    },
  ];

  @override
  void initState() {
    selectedTeam = widget.selectedTeam ?? {};
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Football Teams"),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                // Trigger a rebuild to refresh the ListView
              });
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: footballTeams.length,
        itemBuilder: (context, index) {
          final team = footballTeams[index];
          final isSelected = selectedTeam.contains(team["name"]);
          return FootballTeamItemCard(
            team: team,
            isSelected: isSelected,
            onTap: () {
              setState(() {
                if (isSelected) {
                  selectedTeam.remove(team["name"]);
                } else {
                  selectedTeam.add(team["name"]!);
                }
              });
            },
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FilledButton(
            onPressed: () {
              Navigator.pop(context, selectedTeam);
            },
            child: const Text("Select Teams"),
          ),
        ),
      ),
    );
  }
}