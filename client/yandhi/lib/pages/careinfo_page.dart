import 'package:flutter/material.dart';
import 'package:yandhi/atoms/empty_app_bar.dart';

class CareInfoPage extends StatefulWidget {
  final Map<String, String> _map;

  CareInfoPage({Key key, @required Map<String, String> map})
      : _map = map,
        super(key: key);

  @override
  _CareInfoPageState createState() => _CareInfoPageState();
}

class _CareInfoPageState extends State<CareInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EmptyAppBar(),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Text(
                  "Instructions:",
                  style: TextStyle(fontSize: 22),
                )),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  widget._map["category"] + "\n" + widget._map["activity"],
                  style: TextStyle(fontSize: 14),
                )),
            Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Text(
                  "Status:",
                  style: TextStyle(fontSize: 22),
                )),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  widget._map["status"] + "\n" + widget._map["statusReason"],
                  style: TextStyle(fontSize: 14),
                )),
            Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Text(
                  "Prescription:",
                  style: TextStyle(fontSize: 22),
                )),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  widget._map["medicationRequest"] +
                      "\n" +
                      widget._map["medicationRequestStatusReason"],
                  style: TextStyle(fontSize: 14),
                )),
            Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Text(
                  "Others:",
                  style: TextStyle(fontSize: 22),
                )),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Nil.",
                  style: TextStyle(fontSize: 14),
                )),
          ],
        ),
      ),
    );
  }
}
