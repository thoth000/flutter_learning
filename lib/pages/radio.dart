import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../change_notifier.dart';

class RadioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio'),
      ),
      body: Column(
        children: [
          Text(
            Provider.of<DataStorage>(context).selectStr,
            style: TextStyle(fontSize: 50),
          ),
          MyRadioList(),
        ],
      ),
    );
  }
}

class MyRadioList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<DataStorage>(context);
    var group = data.selectStr;
    return Column(
      children: <Widget>[
        RadioListTile(
          title: Text('りんご'),
          subtitle: Text('Apple'),
          value: 'Apple',
          groupValue: group,
          onChanged: (value) => data.changeStr(value),
        ),
        RadioListTile(
          title: Text('ぶどう'),
          subtitle: Text('Greap'),
          value: 'Grape',
          groupValue: group,
          onChanged: (v) => data.changeStr(v),
        ),
        RadioListTile(
          title: Text('おれんじ'),
          subtitle: Text('Orange'),
          value: 'Orange',
          groupValue: group,
          onChanged: (v) => data.changeStr(v),
        ),
      ],
    );
  }
}
