import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {

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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Builder"),
      ),
      body: ListView.builder(
        itemCount: footballTeams.length,
        itemBuilder: (context, index) {
          final team = footballTeams[index];
          return Card(
            child: ListTile(
              leading: Image.network(
                team["logo"]!,
                width: 50,
                height: 50,
              ),
              title: Text(team["name"]!),
              subtitle: Text(team["stadium"]!),
            ),
          );
        },
      ),
    );
  }
}