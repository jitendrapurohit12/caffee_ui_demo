import 'package:caffee_ui_demo/page/landing_page.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      title: 'Caffee UI Demo',
      home: LandingPage(),
    );
  }
}
