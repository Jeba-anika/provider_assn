import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 2),
        () => Navigator.push(
            context, CupertinoPageRoute(builder: (_) => HomeScreen())));

    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
            ),
            Text(
              "Example",
              style: TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
    );
  }
}
