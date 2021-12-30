import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import 'package:flutter_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        icon: Icons.home,
        name: "Home Screen",
        screen: const HomeScreen()),
    MenuOption(
        route: 'listView1',
        icon: Icons.bug_report,
        name: "ListView tipo 1",
        screen: const ListView1Screen()),
    MenuOption(
        route: 'listView2',
        icon: Icons.list,
        name: "ListView tipo 2",
        screen: const ListView2Screen()),
    MenuOption(
        route: 'cardView',
        icon: Icons.card_giftcard,
        name: "Tarjetas - Cards",
        screen: const CardScreen()),
    MenuOption(
        route: 'alertView',
        icon: Icons.bus_alert,
        name: "Alertas - Alerts",
        screen: const AlertScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  /*static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listView1': (BuildContext context) => const ListView1Screen(),
    'listView2': (BuildContext context) => const ListView2Screen(),
    'cardView': (BuildContext context) => const CardScreen(),
    'alertView': (BuildContext context) => const AlertScreen(),
  };*/

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
