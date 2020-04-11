import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../change_notifier.dart';

class ALPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: _CounterText(),
          ),
          Text('どちらもタップでは+1されます。'),
          Text('長押しでそれぞれのダイアログが現れます。'),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _LongPlessButton(
                  Colors.blueAccent,
                  MySimpleDialog(),
                  'SinpleDialog'
                ),
                _LongPlessButton(
                  Colors.redAccent,
                  MyAlertDialog(),
                  'AlertDialog',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CounterText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<DataStorage>(context);

    return Center(
      child: Text(counter.number.toString(),style: TextStyle(fontSize: 100),overflow: TextOverflow.ellipsis,),
    );
  }
}

class _LongPlessButton extends StatelessWidget {
  final color;
  final _nextBuild;
  final title;
  _LongPlessButton(this.color, this._nextBuild,this.title);
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<DataStorage>(context, listen: false);
    return GestureDetector(
      onTap: () => counter.increment(1),
      onLongPress: () =>
          showDialog(context: context, builder: (context) => _nextBuild),
      child: Container(
        height: 100,
        width: 100,
        color: color,
        child: Center(
            child: Text(
          title,
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}

class MySimpleDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<DataStorage>(context, listen: false);
    return SimpleDialog(
      title: Text('シンプルダイアログ'),
      children: <Widget>[
        SimpleDialogOption(
          onPressed: () {
            counter.increment(2);
            Navigator.pop(context);
          },
          child: Text('リンゴ'),
        ),
        SimpleDialogOption(
          onPressed: () {
            counter.increment(3);
            Navigator.pop(context);
          },
          child: Text('グレープ'),
        ),
      ],
    );
  }
}

class MyAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<DataStorage>(context);
    return AlertDialog(
      title: Text('アラートダイアログ'),
      content: Text('ナンバーに5足しますか？'),
      actions: <Widget>[
        FlatButton(
          child: Text("Cancel"),
          onPressed: () => Navigator.pop(context),
        ),
        FlatButton(
          child: Text("OK"),
          onPressed: () {
            counter.increment(5);
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
