import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../change_notifier.dart';

class CnProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DataStorage>(
      create: (_) => DataStorage(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ChangeNotifierProvider()'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('ここも再描画されるのかな\n結果としてはされませんでした💦'),
            _CounterText(),
            _RaisedButton(),
          ],
        ),
      ),
    );
  }
}

class _RaisedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<DataStorage>(context,listen: false);

    return RaisedButton(
      onPressed: counter.increment,
      child: const Icon(Icons.add),
    );
  }
}

class _CounterText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<DataStorage>(context);

    return Center(
      child:
        Text(counter.number.toString()),
    );
  }
}