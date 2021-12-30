import 'package:flutter/material.dart';

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
                    leading: const Icon(Icons.bug_report),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ))
              .toList(),
          const Divider()
        ],
      ),
    );
  }
}
