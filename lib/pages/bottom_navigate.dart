import 'package:flutter/material.dart';

class BottomNavigate extends StatefulWidget {
  @override
  _BottomNavigateState createState() => _BottomNavigateState();
}

class _BottomNavigateState extends State<BottomNavigate> {
  int _currentIndex = 0;
  final texts = ['ホーム', 'きろく', 'ゲーム', 'せってい'];

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).primaryColor;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Text(texts[_currentIndex]),
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 50,
        height: 50,
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100)
          ),
          onPressed: ()=>print('yey'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5,
        elevation: 5,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: IconButton(
                icon: Icon(Icons.access_time),
                color: (_currentIndex == 0) ? color : Colors.grey,
                onPressed: () => setState(() {
                  _currentIndex = 0;
                }),
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.access_time),
                color: (_currentIndex == 1) ? color : Colors.grey,
                onPressed: () => setState(() {
                  _currentIndex = 1;
                }),
              ),
            ),
            SizedBox(
              width: 60,
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.access_time),
                color: (_currentIndex == 2) ? color : Colors.grey,
                onPressed: () => setState(() {
                  _currentIndex = 2;
                }),
              ),
            ),
            Expanded(
                          child: IconButton(
                icon: Icon(Icons.access_time),
                color: (_currentIndex == 3) ? color : Colors.grey,
                onPressed: () => setState(() {
                  _currentIndex = 3;
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
