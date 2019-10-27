import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:yandhi/atoms/button.dart';
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
            Row(
              children: <Widget>[
                Center(
                  child: Container(
                    height: 40,
                    width: 40,
                    child: FloatingActionButton(
                      elevation: 0,
                      hoverColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      backgroundColor: Colors.transparent,
                      onPressed: () => Navigator.pop(context),
                      splashColor: Colors.amber[800],
                      child: Icon(
                        Ionicons.getIconData("md-arrow-back"),
                        size: 24,
                        color: Config.darkBlue,
                      ),
                    ),
                  ),
                ),
                Header(text: "Blood\nGlucose."),
              ],
            ),
            Chart(),
            Row(
              children: <Widget>[
                Button(
                  onTap: () => null,
                  text: "Hello",
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Button(
                  onTap: () => null,
                  text: "Hello",
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Button(
                  onTap: () => null,
                  text: "Hello",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
