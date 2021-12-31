import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  final games = const [
    "Megaman",
    "Metal Gear Solid",
    "Super Smash Bros",
    "Fifa",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview tipo 1"),
      ),
      body: ListView(
        children: [
          ...games
              .map((game) => ListTile(
                    title: Text(game),
                    leading: const Icon(Icons.bug_report,
                        color: AppTheme.primaryColor),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ))
              .toList(),
          const Divider()
        ],
      ),
    );
  }
}
