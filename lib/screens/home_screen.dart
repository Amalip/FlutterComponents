import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes en Flutter"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: const Text("Nombre de ruta"),
                leading: const Icon(Icons.bug_report),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {
                  /* Large way
                  final route = MaterialPageRoute(
                      builder: (context) => const ListView1Screen());

                  Navigator.pushReplacement(context, route);*/

                  Navigator.pushNamed(context, 'cardView');
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: 20),
    );
  }
}
