import 'package:flutter/material.dart';

class GridViewBuilderScreen extends StatefulWidget {
  const GridViewBuilderScreen({super.key});

  @override
  State<GridViewBuilderScreen> createState() => _GridViewBuilderScreenState();
}

class _GridViewBuilderScreenState extends State<GridViewBuilderScreen> {

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
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Number of columns
          mainAxisSpacing: 2, // Space between rows
          crossAxisSpacing: 2, // Space between columns
          childAspectRatio: 1, // Aspect ratio of each item
        ),
        padding: const EdgeInsets.all(10.0),
        itemCount: footballTeams.length,
        itemBuilder: (context, index) {
          final team = footballTeams[index];
          return Card(
            color: Colors.blueAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(team['logo']!, height: 50, width: 50),
                Text(
                  team['name']!,
                  style: const TextStyle(color: Colors.white, fontSize: 11),
                ),
                Text(
                  team['stadium']!,
                  style: const TextStyle(color: Colors.white70, fontSize: 8),
                ),
              ],
            ),
          );
        },
      )
    );
  }
}