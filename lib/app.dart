import 'package:flutter/material.dart';

import 'pages/one_page.dart';
import 'pages/two_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/one_page": (context) => OnePage(),
        "/two_page": (context) => TwoPage()
      },
      initialRoute: "/one_page",
    );
  }
}
