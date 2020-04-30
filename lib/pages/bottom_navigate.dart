import 'package:flutter/material.dart';

class BottomNavigate extends StatefulWidget {
  @override
  _BottomNavigateState createState() => _BottomNavigateState();
}

class _BottomNavigateState extends State<BottomNavigate> {
  int _currentIndex = 0;
  final texts = ['ホーム', 'きろく','ゲーム', 'せってい'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: Text(texts[_currentIndex]),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => null,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('ホーム'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.today),
            title: Text('最近の記録'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gamepad),
            title: Text('記録'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('せってい'),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
