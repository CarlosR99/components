import 'package:flutter/material.dart';

import 'src/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: Liveview1Screen());
      //home: const CardScreen(),
      initialRoute: 'Home',
      routes: {
        'Home': (_) => const HomeScreen(),
        'listview1': (_) => const Liveview1Screen(),
        'listview2': (_) => const Liveview2Screen(),
        'Alert': (_) => const AlertScreen(),
        'Card': (_) => const CardScreen(),

        //'listview1': (BuildContext contex) => const Liveview1Screen(),
        //'listview2': (BuildContext contex) => const Liveview2Screen(),
        //'Alert': (BuildContext contex) => const AlertScreen(),
        //'Card': (BuildContext contex) => const CardScreen(),
      },
    );
  }
}
