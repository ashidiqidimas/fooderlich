import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.light();
    final darkTheme = FooderlichTheme.dark();
    return MaterialApp(
      theme: theme,
      darkTheme: darkTheme,
      title: "Fooderlich",
      home: const Home(),
    );
  }
}
// /Users/ashidiqidimas/Documents/Programming
// /Users/ashidiqidimas/Documents/Programming/flutter/bin