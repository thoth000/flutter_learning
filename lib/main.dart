import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'pages/list.dart';
import 'change_notifier.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  await Hive.initFlutter(appDocumentDir.path);
  await Hive.openBox('data');
  if (Hive.box('data').containsKey('welcome')) {
    await Hive.box('data').put('welcome', 'Yay');
  } else {
    var box = Hive.box('data');
    await box.put('isDark', true);
    await box.put('value', 0);
    await box.put('welcome', 'Boo');
  }
  runApp(
    ChangeNotifierProvider(
      create: (_) => DataStorage(),
      child: ChangeNotifierProvider(
        create: (_) => ListNotifier(),
        child: ChangeNotifierProvider(
          create: (_)=> ClockNotifier(),
          child: MyApp(),
        ),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<DataStorage>(context).appTheme(),
      home: PageList(),
    );
  }

  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }
}
