import 'package:flutter/material.dart';
import 'package:yandhi/globals/config.dart';

class Button extends StatelessWidget {
  final String _text;
  final GestureTapCallback _onTap;

  Button({Key key, @required String text, @required GestureTapCallback onTap})
      : _text = text,
        _onTap = onTap,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _mutedColor;

    if (_onTap == null) {
      _mutedColor = Colors.grey[400];
    } else {
      _mutedColor = Colors.black;
    }

    return Flexible(
      child: Container(
        constraints: BoxConstraints(maxHeight: 40.0),
        margin: EdgeInsets.all(15),
        height: 40.0,
        decoration: BoxDecoration(
          color: Config.offWhite,
          borderRadius: BorderRadius.all(
            const Radius.circular(4.0),
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.amber[800],
            onTap: _onTap,
            child: Center(
              child: Text(
                _text,
                style: TextStyle(color: _mutedColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
