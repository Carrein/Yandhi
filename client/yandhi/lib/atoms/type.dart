import 'package:flutter/material.dart';
import 'package:yandhi/globals/config.dart';

class Type extends StatelessWidget {
  final String _text;
  final double _size;
  final bool _isDark;

  Type(
      {Key key,
      @required String text,
      @required double size,
      @required bool isDark})
      : _text = text,
        _size = size,
        _isDark = isDark,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        _text,
        style: TextStyle(
          color: _isDark ? Config.darkBlue : Config.offWhite,
          fontWeight: FontWeight.bold,
          fontSize: _size,
        ),
      ),
    );
  }
}
