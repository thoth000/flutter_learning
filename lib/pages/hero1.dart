import 'package:flutter/material.dart';
import 'hero2.dart';

class Hero1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String photo = 'images/thoth000.jpg';
    final Size displaySize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '遷移前',
            ),
            Text(
              'Heroアニメーションがあるよ'
            ),
            SizedBox(
              height: displaySize.width/1.5,
              width: displaySize.width/1.5,
              child: Hero(
                tag: photo,
                child: RaisedButton(
                  color: Color(0xFF2694ab),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Hero2Page(),
                    ),
                  ),
                  child: Image.asset(photo,fit: BoxFit.fill,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
