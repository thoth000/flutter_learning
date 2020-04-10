import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'change_notifier.dart';

class CnProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CnCounter>(
      create: (_) => CnCounter(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ChangeNotifierProvider()'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('ここも再描画されるのかな\nされませんでした💦'),
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
    final counter = Provider.of<CnCounter>(context,listen: false);

    return RaisedButton(
      onPressed: counter.increment,
      child: const Icon(Icons.add),
    );
  }
}

class _CounterText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CnCounter>(context);

    return Center(
      child:
        Text(counter.number.toString()),
    );
  }
}