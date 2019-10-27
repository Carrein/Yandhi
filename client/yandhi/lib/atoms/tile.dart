import 'package:flutter/material.dart';
import 'package:yandhi/globals/config.dart';

class Tile extends StatelessWidget {
  final Widget _content;

  Tile({Key key, @required Widget content})
      : _content = content,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 200.0),
      margin: new EdgeInsets.all(10.0),
      padding: new EdgeInsets.all(15.0),
      child: _content,
      decoration: BoxDecoration(
        color: Config.offWhite,
        borderRadius: BorderRadius.all(
          const Radius.circular(4.0),
        ),
      ),
    );
  }
}
