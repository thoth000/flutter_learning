import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../change_notifier.dart';

class RLPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final notifier = Provider.of<ListNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('ReordableListView'),
      ),
      body: Center(
        child: Container(
          child: ReorderableListView(
            children: [
              for (int i = 0; i < notifier.list.length; i++)
                Card(
                  key: Key(notifier.list[i][1].toString()),
                  child: ListTile(
                    title: Text(notifier.list[i][0]),
                    subtitle: Text('おもしろい'),
                  ),
                ),
            ],
            onReorder: (oldIndex, newIndex) =>
                notifier.reorder(oldIndex, newIndex),
          ),
        ),
      ),
    );
  }
}
