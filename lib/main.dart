import 'package:flutter/material.dart';
import 'package:quiz/welcomePage.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'PublicSans'),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
