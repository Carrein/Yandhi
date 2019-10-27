import 'dart:async';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:yandhi/globals/config.dart';

class Chart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ChartState();
}

class ChartState extends State<Chart> {
  bool isShowingMainData;

  StreamController<LineTouchResponse> controller;

  @override
  void initState() {
    super.initState();

    controller = StreamController();
    controller.stream.distinct().listen((LineTouchResponse response) {});

    isShowingMainData = true;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(4.0)),
            gradient: LinearGradient(
              colors: const [
                // Color(0xff2c274c),
                Color(0xbb0E1126),
                Color(0xee65AFBF),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            )),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  // child: Padding(
                  // padding: const EdgeInsets.only(right: 16.0, left: 6.0),
                  child: FlChart(
                    swapAnimationDuration: Duration(milliseconds: 250),
                    chart: LineChart(
                      sampleData2(),
                    ),
                  ),
                  // ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  LineChartData sampleData2() {
    return LineChartData(
      lineTouchData: const LineTouchData(enabled: false),
      gridData: const FlGridData(
        show: true,
      ),
      titlesData: FlTitlesData(
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 25,
          textStyle: TextStyle(
            color: Config.offWhite,
            fontSize: 10,
          ),
          margin: 10,
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return 'JAN';
              case 4:
                return 'FEB';
              case 7:
                return 'MAR';
              case 10:
                return 'APR';
              case 13:
                return 'MAY';
            }
            return '';
          },
        ),
        leftTitles: SideTitles(
          showTitles: true,
          textStyle: TextStyle(
            color: Config.offWhite,
            fontSize: 10,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '0mg';
              case 2:
                return '50mg';
              case 3:
                return '100mg';
              case 4:
                return '150mg';
              case 5:
                return '200mg';
            }
            return '';
          },
          margin: 10,
          reservedSize: 40,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: Border(
            bottom: BorderSide(
              color: Colors.transparent,
            ),
            left: BorderSide(
              color: Colors.transparent,
            ),
            right: BorderSide(
              color: Colors.transparent,
            ),
            top: BorderSide(
              color: Colors.transparent,
            ),
          )),
      minX: 0,
      maxX: 15,
      maxY: 6,
      minY: 0,
      lineBarsData: linesBarData2(),
    );
  }

  List<LineChartBarData> linesBarData2() {
    return [
      // const LineChartBarData(
      //   spots: [
      //     FlSpot(1, 1),
      //     FlSpot(3, 4),
      //     FlSpot(5, 1.8),
      //     FlSpot(7, 5),
      //     FlSpot(10, 2),
      //     FlSpot(12, 2.2),
      //     FlSpot(13, 1.8),
      //     FlSpot(14, 1.8),
      //   ],
      //   isCurved: true,
      //   curveSmoothness: 0,
      //   colors: [
      //     Color(0x444af699),
      //   ],
      //   barWidth: 3,
      //   isStrokeCapRound: true,
      //   dotData: FlDotData(
      //     show: false,
      //   ),
      //   belowBarData: BarAreaData(
      //     show: false,
      //   ),
      // ),
      const LineChartBarData(
        spots: [
          FlSpot(1, 1),
          FlSpot(3, 2.8),
          FlSpot(7, 1.2),
          FlSpot(10, 2.8),
          FlSpot(12, 2.6),
          FlSpot(13, 3.9),
          FlSpot(14, 3.9),
        ],
        isCurved: true,
        colors: [
          Color(0x99F2F2F2),
        ],
        barWidth: 1,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(show: true, colors: [
          Color(0x55ffc107),
        ]),
      ),
      // const LineChartBarData(
      //   spots: [
      //     FlSpot(1, 3.8),
      //     FlSpot(3, 1.9),
      //     FlSpot(6, 5),
      //     FlSpot(10, 3.3),
      //     FlSpot(13, 4.5),
      //     FlSpot(14, 4.5),
      //   ],
      //   isCurved: true,
      //   curveSmoothness: 0,
      //   colors: [
      //     Color(0x4427b6fc),
      //   ],
      //   barWidth: 2,
      //   isStrokeCapRound: true,
      //   dotData: FlDotData(
      //     show: true,
      //   ),
      //   belowBarData: BarAreaData(
      //     show: false,
      //   ),
      // ),
    ];
  }

  @override
  void dispose() {
    super.dispose();
    controller.close();
  }
}
