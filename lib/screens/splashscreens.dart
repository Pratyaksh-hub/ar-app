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
      title: const Text(
        'AR Furniture App',
      style: TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 30,
      color: Colors.deepOrange,
       ),
      ),
      image: Image.asset('items/icon.png'),
      backgroundColor: const Color.fromARGB(255, 160, 213, 226),
      photoSize: 180,
      loaderColor: const Color.fromARGB(255, 182, 228, 76),
      loadingText: const Text(
        'Furniture App',
      style: TextStyle(
      color: Colors.greenAccent,
      fontSize: 17.0,
       ),
      ),
     );
  }
}