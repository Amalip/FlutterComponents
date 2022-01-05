import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avatars"),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: const Text("AXL"),
              backgroundColor: Colors.indigo[900],
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 100,
          backgroundImage: NetworkImage(
              "https://www.feedbackcr.com/wp-content/uploads/2020/02/83666719_818027255349643_5714821168377102336_o.jpg"),
        ),
      ),
    );
  }
}
