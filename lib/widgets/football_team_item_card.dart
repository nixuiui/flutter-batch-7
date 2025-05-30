import 'package:flutter/material.dart';

class FootballTeamItemCard extends StatelessWidget {
  const FootballTeamItemCard({
    super.key,
    required this.team,
  });

  final Map<String, String> team;

  @override
  Widget build(BuildContext context) {
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
  }
}