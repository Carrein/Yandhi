import 'package:flutter/material.dart';
import 'package:yandhi/atoms/type.dart';

class Header extends StatelessWidget {
  final String _text;

  Header({Key key, @required String text})
      : _text = text,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 15.0),
      padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
      alignment: Alignment.centerLeft,
      child: Type(
        isDark: true,
        size: 24.0,
        text: _text,
      ),
    );
  }
}
