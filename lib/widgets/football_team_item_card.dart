import 'package:flutter/material.dart';

class FootballTeamItemCard extends StatelessWidget {
  const FootballTeamItemCard({
    super.key,
    required this.team,
    required this.isSelected,
    this.onTap
  });

  final Map<String, String> team;
  final bool isSelected;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap?.call,
        leading: Image.network(
          team["logo"]!,
          width: 50,
          height: 50,
        ),
        title: Text(team["name"]!),
        subtitle: Text(team["stadium"]!),
        trailing: isSelected
            ? const Icon(Icons.check_circle, color: Colors.green)
            : const Icon(Icons.circle_outlined, color: Colors.grey),
      ),
    );
  }
}