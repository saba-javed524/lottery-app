import 'package:flutter/material.dart';
import 'package:lottery_app/home.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});
  static const String route = 'screen_one';

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen One'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Screen One'),
        ),
      ),
    );
  }
}
