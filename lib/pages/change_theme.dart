import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/change_notifier.dart';

class ChangeThemePage extends StatelessWidget {
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
            Text('テーマ変更',style: TextStyle(fontSize: 30),),
            Wrap(
              direction: Axis.horizontal,
              children: <Widget>[
                FlatButton(
                  onPressed: () => theme.changeTheme(Colors.redAccent),
                  child: Container(
                    height: 40,
                    width: 40,
                    color: Colors.redAccent,
                  ),
                ),
                FlatButton(
                  onPressed: () => theme.changeTheme(Colors.blueAccent),
                  child: Container(
                    height: 40,
                    width: 40,
                    color: Colors.blueAccent,
                  ),
                ),
                FlatButton(
                  onPressed: () => theme.changeTheme(Colors.greenAccent),
                  child: Container(
                    height: 40,
                    width: 40,
                    color: Colors.greenAccent,
                  ),
                ),
                FlatButton(
                  onPressed: () => theme.changeTheme(Colors.yellowAccent),
                  child: Container(
                    height: 40,
                    width: 40,
                    color: Colors.yellowAccent,
                  ),
                ),
                FlatButton(
                  onPressed: () => theme.changeTheme(Colors.purpleAccent),
                  child: Container(
                    height: 40,
                    width: 40,
                    color: Colors.purpleAccent,
                  ),
                ),
                FlatButton(
                  onPressed: () => theme.changeTheme(Colors.pinkAccent),
                  child: Container(
                    height: 40,
                    width: 40,
                    color: Colors.pinkAccent,
                  ),
                ),
                FlatButton(
                  onPressed: () => theme.changeTheme(Colors.orangeAccent),
                  child: Container(
                    height: 40,
                    width: 40,
                    color: Colors.orangeAccent,
                  ),
                ),
                FlatButton(
                  onPressed: () => theme.changeTheme(Colors.indigoAccent),
                  child: Container(
                    height: 40,
                    width: 40,
                    color: Colors.indigoAccent,
                  ),
                ),
            ],)
          ],
        ),
      ),
    );
  }
}
