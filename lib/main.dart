import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/list.dart';
import 'change_notifier.dart';

void main() => runApp(
      ChangeNotifierProvider(create: (_) => DataStorage(), child: MyApp()),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<DataStorage>(context).appTheme(),
      home: PageList(),
    );
  }
}
