import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/change_notifier.dart';

class ChangeModePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<DataStorage>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('ChangeMode'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('statelessWidgetで実装'),
            RaisedButton(
              onPressed: () => theme.changeMode(),
              child: Icon(Icons.refresh),
            ),
          ],
        ),
      ),
    );
  }
}
