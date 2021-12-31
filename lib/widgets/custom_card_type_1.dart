import 'package:flutter/material.dart';
import 'package:flutter_components/themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.precision_manufacturing_outlined,
                color: AppTheme.primaryColor),
            title: Text("Title"),
            subtitle: Text(
                "Aliquip duis commodo Lorem excepteur laborum velit fugiat id laboris."),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                TextButton(
                    onPressed: () {},
                    child: const Text("Cancel"),
                    style: TextButton.styleFrom(primary: Colors.red.shade400)),
                TextButton(
                  onPressed: () {},
                  child: const Text("Ok"),
                )
              ]))
        ],
      ),
    );
  }
}
