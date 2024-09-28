import 'package:components/src/models/models.dart';
import 'package:components/src/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'Home';
  static final menuOptions = <MenuOptions>[
    MenuOptions(
      route: 'Home',
      icon: Icons.home,
      title: 'Home',
      page: const HomeScreen(),
    ),
    MenuOptions(
      route: 'listview1',
      icon: Icons.list,
      title: 'List View 1',
      page: const Liveview1Screen(),
    ),
    MenuOptions(
      route: 'listview2',
      icon: Icons.list,
      title: 'List View 2',
      page: const Liveview2Screen(),
    ),
    MenuOptions(
      route: 'Alert',
      icon: Icons.notifications,
      title: 'Alert',
      page: const AlertScreen(),
    ),
    MenuOptions(
      route: 'Card',
      icon: Icons.credit_card,
      title: 'Card',
      page: const CardScreen(),
    ),
  ];
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (_) => option.page});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => const AlertScreen());
  }
  //static Map<String, Widget Function(BuildContext)> routes = {
  //'Home': (_) => const HomeScreen(),
  //'listview1': (_) => const Liveview1Screen(),
  //'listview2': (_) => const Liveview2Screen(),
  //'Alert': (_) => const AlertScreen(),
  //'Card': (_) => const CardScreen(),
  //};
  //static Route<dynamic> onGenerateRoute(RouteSettings settings) {
  // return MaterialPageRoute(builder: (_) => const AlertScreen());
  //}
}
