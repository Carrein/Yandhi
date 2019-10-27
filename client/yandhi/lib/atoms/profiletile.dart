import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_page_transition/flutter_page_transition.dart';
import 'package:yandhi/atoms/type.dart';
import 'package:yandhi/globals/config.dart';
import 'package:yandhi/pages/info_page.dart';

class ProfileTile extends StatelessWidget {
  final String _icon;
  final String _header;
  final String _numeric;
  final String _footer;
  final bool _border;
  final Function() _onTap;

  ProfileTile(
      {Key key,
      @required String icon,
      @required String header,
      @required String numeric,
      @required String footer,
      @required bool border,
      @required Function() onTap})
      : _icon = icon,
        _header = header,
        _numeric = numeric,
        _footer = footer,
        _border = border,
        _onTap = onTap,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Border borderd = Border.all(color: Colors.transparent);
    if (_border) {
      borderd = Border.all(width: 1.0, color: Config.darkBlue);
    }

    return Container(
      height: 140.0,
      width: 80.0,
      margin: EdgeInsets.all(10.0),
      child: FlatButton(
        splashColor: Colors.amber[800],
        onPressed: _onTap,
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                child: Type(
                  isDark: true,
                  size: 18.0,
                  text: _header,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                child: Center(
                  child: Icon(
                    Ionicons.getIconData(_icon),
                    size: 24,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                child: Type(
                  isDark: true,
                  size: 18.0,
                  text: _numeric,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                child: Type(
                  isDark: true,
                  size: 12.0,
                  text: _footer,
                ),
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        color: Config.offWhite,
        borderRadius: BorderRadius.all(
          const Radius.circular(4.0),
        ),
        border: borderd,
      ),
    );
  }
}
