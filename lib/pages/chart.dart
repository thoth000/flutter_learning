import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class ChartsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('チャート'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Chart(Colors.blue,500.0,'青'),
          Chart(Colors.green,200.0,'緑'),
          Chart(Colors.amber,700.0,'アンバー'),
          Chart(Colors.red,900,'赤'),
        ],
      ),
    );
  }
}

class Chart extends StatelessWidget {
  Color color;
  double number;
  String title;
  Chart(this.color,this.number,this.title);
  @override
  Widget build(BuildContext context) {
    final GlobalKey<AnimatedCircularChartState> _chartKey =
        new GlobalKey<AnimatedCircularChartState>();

    List<CircularStackEntry> data = <CircularStackEntry>[
      new CircularStackEntry(
        <CircularSegmentEntry>[
          new CircularSegmentEntry(number, color, rankKey: 'Q1'),
          new CircularSegmentEntry(1000-number, Colors.grey[400], rankKey: 'Q2'),
        ],
        rankKey: 'Quarterly Profits',
      ),
    ];
    return Column(
      children: <Widget>[
        AnimatedCircularChart(
          key: _chartKey,
          size: Size(150, 150),
          duration: Duration(seconds: 1),
          initialChartData: data,
          chartType: CircularChartType.Radial,
          holeRadius: 50,
          holeLabel: '100%',
          labelStyle: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.w700),
          edgeStyle: SegmentEdgeStyle.round,
          percentageValues: false,
        ),
        Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
      ],
    );
  }
}
