import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

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
      appBar: AppBar(title: const Text("Listview tipo 2")),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(games[index]),
                leading:
                    const Icon(Icons.bug_report, color: AppTheme.primaryColor),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () => {},
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: games.length),
    );
  }
}
