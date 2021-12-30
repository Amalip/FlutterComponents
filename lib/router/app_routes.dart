import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import 'package:flutter_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'listView1',
        icon: Icons.bug_report,
        name: "ListView1",
        screen: const ListView1Screen()),
    MenuOption(
        route: 'listView2',
        icon: Icons.list,
        name: "ListView2",
        screen: const ListView2Screen()),
    MenuOption(
        route: 'cardView',
        icon: Icons.card_giftcard,
        name: "CardView",
        screen: const CardScreen()),
    MenuOption(
        route: 'alertView',
        icon: Icons.bus_alert,
        name: "AlertView",
        screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listView1': (BuildContext context) => const ListView1Screen(),
    'listView2': (BuildContext context) => const ListView2Screen(),
    'cardView': (BuildContext context) => const CardScreen(),
    'alertView': (BuildContext context) => const AlertScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
