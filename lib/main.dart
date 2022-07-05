import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_class/provider/todo_provider.dart';
import 'package:provider_class/views/home_screen.dart';
import 'package:provider_class/views/splash_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => TodoProvider())],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
