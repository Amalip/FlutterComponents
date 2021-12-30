import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);

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
        title: const Text("Listview tipo 2"),
        elevation: 0,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(games[index]),
                leading: const Icon(Icons.bug_report, color: Colors.indigo),
                trailing:
                    const Icon(Icons.arrow_forward_ios, color: Colors.indigo),
                onTap: () => {},
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: games.length),
    );
  }
}
