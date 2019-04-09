import 'package:flutter/material.dart';
import 'dart:async';

import 'main_screen.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var _duration = Duration(seconds: 3);
    return Timer(_duration, _startMainScreen);
  }

  _startMainScreen() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Main()));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Splash Screen",
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Image.asset(
              'images/splash_screen.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/logo_white.png',
                  width: 300,
                  height: 180,
                  fit: BoxFit.contain,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(
                    "A Way To Be Smart",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
