import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../change_notifier.dart';

class SelectorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DataStorage>(
      create: (_) => DataStorage(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Selector()'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _CounterText(),
              _CountButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class _CountButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<DataStorage>(context, listen: false);

    return RaisedButton(
      onPressed: () => counter.increment(1),
      child: const Icon(Icons.add),
    );
  }
}

class _CounterText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Consumer<DataStorage>(
          builder: (_, counter, __) => Text(counter.number.toString()),
        ),
        const SizedBox(height: 32.0),
        const Text(
          '2回押すと一つ増えます\nrebuildはSelectorだけです。',
          style: TextStyle(fontSize: 16.0),
        ),
        Selector<DataStorage, int>(
          selector: (_, counter) => counter.number,
          shouldRebuild: (_, next) => next % 2 == 0,
          builder: (_, number, __) => Text(
            ((number ~/ 2).toString()),
          ),
        ),
      ],
    );
  }
}
