import 'package:flutter/material.dart';
import 'package:yandhi/atoms/chart.dart';
import 'package:yandhi/atoms/empty_app_bar.dart';
import 'package:yandhi/atoms/tile.dart';
import 'package:yandhi/globals/config.dart';
import 'package:yandhi/molecules/header.dart';
import 'package:yandhi/atoms/chart.dart';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EmptyAppBar(),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Header(text: "Blood\nGlucose."),
            Chart(),
          ],
        ),
      ),
    );
  }
}
