import 'package:flutter/material.dart';
import 'change_notifier_provider.dart';
import 'selector.dart';
import 'hero1.dart';
import 'hero2.dart';

void main() => runApp(
      MyApp()
    );
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Hero2Page()
    );
  }
}
