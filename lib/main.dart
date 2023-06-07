import 'package:flutter/material.dart';
import 'package:lottery_app/home.dart';
import 'package:lottery_app/lottery.dart';
import 'package:lottery_app/screen_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      initialRoute: HomeScreen.route,
      routes: {
        HomeScreen.route: (context) => Lottery(),
        ScreenOne.route: (context) => ScreenOne(),
      },
    );
  }
}
