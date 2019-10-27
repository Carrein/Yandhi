import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EmptyAppBar extends StatelessWidget implements PreferredSizeWidget {
  static const double _defaultElevation = 4.0;
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final AppBarTheme appBarTheme = AppBarTheme.of(context);
    final Brightness brightness =
        appBarTheme.brightness ?? themeData.primaryColorBrightness;
    final SystemUiOverlayStyle overlayStyle = brightness == Brightness.dark
        ? SystemUiOverlayStyle.light
        : SystemUiOverlayStyle.dark;

    return Semantics(
      container: true,
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: overlayStyle,
        child: Material(
          color: appBarTheme.color ?? themeData.primaryColor,
          elevation: appBarTheme.elevation ?? _defaultElevation,
          child: Semantics(
            explicitChildNodes: true,
            child: Container(),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(0.0, 0.0);
}
