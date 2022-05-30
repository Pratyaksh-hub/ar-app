import 'package:ar_aapp/screens/itemListScreen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key key}) : super(key: key);


  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: ItemListScreen(),
      title: Text(
        'Augmented Reality App',
      style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 30,
      color: Colors.yellow.shade900,
       ),
      ),
      image: Image.asset('items/icon.png'),
      backgroundColor: Colors.white,
      photoSize: 180,
      loaderColor: Colors.blue.shade900,
      loadingText: Text(
        'AR App',
      style: TextStyle(
      color: Colors.yellow.shade900,
      fontSize: 17.0,
        fontWeight: FontWeight.bold
       ),
      ),
     );
  }
}