import 'package:ar_aapp/screens/splashscreens.dart';
import 'package:flutter/material.dart';

import 'screens/splashscreens.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MySplashScreen(
      )
    );
  }
}