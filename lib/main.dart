import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'Views/Home.dart';
import 'Views/Screen2.dart';
import 'Views/Login.dart';
import 'Views/Registre.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Splash(),
      debugShowCheckedModeBanner: false,
      routes: {
        'Home': (context) => Home(),
        'Login': (context) => Login(),
        'Registre': (context) => Registre(),
        'Screen2': (context) => Screen2(),
      },
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: Screen2(),
      title: Text(
        'Agadir Tour',
        textScaleFactor: 2,
      ),
      image: Image(image: AssetImage('images/logo.png')),
      loadingText: Text("Loading"),
      photoSize: 150.0,
      loaderColor: Colors.blue,
    );
  }
}
