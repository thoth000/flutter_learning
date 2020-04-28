import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class ChartsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('チャート'),
      ),
      body: Center(child: Chart()),
    );
  }
}

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<AnimatedCircularChartState> _chartKey =
        new GlobalKey<AnimatedCircularChartState>();

    List<CircularStackEntry> data = <CircularStackEntry>[
      new CircularStackEntry(
        <CircularSegmentEntry>[
          new CircularSegmentEntry(500.0, Colors.red[200], rankKey: 'Q1'),
          new CircularSegmentEntry(1000.0, Colors.green[200], rankKey: 'Q2'),
          new CircularSegmentEntry(2000.0, Colors.blue[200], rankKey: 'Q3'),
          new CircularSegmentEntry(1000.0, Colors.yellow[200], rankKey: 'Q4'),
        ],
        rankKey: 'Quarterly Profits',
      ),
    ];
    return AnimatedCircularChart(
      key: _chartKey,
      size: Size(150, 150),
      initialChartData: data,
      chartType: CircularChartType.Radial,
      edgeStyle: SegmentEdgeStyle.round,
      percentageValues: false,
    );
  }
}
