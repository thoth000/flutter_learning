import 'package:flutter/material.dart';
import 'hero1.dart';
import 'change_notifier_provider.dart';
import 'selector.dart';
import 'change_theme.dart';
import 'alert_dialog.dart';
import 'radio.dart';
import 'test.dart';

class PageList extends StatefulWidget {
  @override
  _PageListState createState() => _PageListState();
}

class _PageListState extends State<PageList> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        TestPage(),
        ChangeThemePage(),
        CnProviderPage(),
        SelectorPage(),
        Hero1Page(),
        ALPage(),
        RadioPage(),
      ],
    );
  }
}